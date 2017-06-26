#!/bin/sh

##################################################################
# Resolve OBSR based path

EXE_DIR=`pwd`
SCRIPT_HOME=`dirname "$0"`
cd "$SCRIPT_HOME"
APP_BIN=`pwd`
APP_HOME=`dirname "$APP_BIN"`

OBSR_HOME=$APP_HOME

export APP_BIN APP_HOME OBSR_HOME

cd "$OBSR_HOME"

##################################################################
# System Debug Flag, enabled by default (0 - Disable, 1 - Enable)
SYSTEM_DEBUG=1

##################################################################

# Use same size for Java Min and Max Heap size (0 - Disable, 1 - Enable)
JAVA_HEAP_MIN_MAX_SAME=1

# User defined java heap max in unit of MB
# Should be 1GB or less for 32 bit systems
JAVA_HEAP_MAX_IN_MB=1024

# Use maximum of 2GB for 64-bit system
# Can be set as large as physical memory, but we have set an upper limit to avoid memory dictation by the java process
JAVA64_HEAP_MAX_IN_MB=2048

##################################################################
# Since OBSR 5.5.5.0, we have integrated the shell scripts for the following OS-ARCH.
# OS : from `uname`
# ARCH: from `uname -m`

# Linux-i386 | Linux-i486 | Linux-i586 | Linux-i686 | Linux-amd64 | Linux-x86_64 | Linux-arm | Linux-ppc
# FreeBSD-i386 | FreeBSD-amd64
# OpenBSD-i386 | OpenBSD-amd64

SYSTEM_OS=`uname`
SYSTEM_ARCH=`uname -m`

SYSTEM_IDENTITY=`uname -i`
case "${SYSTEM_OS}" in
  OpenBSD* )
    # OpenBSD does not support "uname -i"
    ;;
  * )
    SYSTEM_IDENTITY=`uname -i`
    ;;
esac

SYSTEM_TYPE=
case "${SYSTEM_OS}" in
  Linux* )
    SYSTEM_TYPE="linux"
    ;;
  *BSD* )
    SYSTEM_TYPE="bsd"
    ;;
  Darwin* )
    SYSTEM_TYPE="macos"
    ;;
  SunOS )
    SYSTEM_TYPE="solaris"
    ;;
  * )
    SYSTEM_TYPE="unknown"
    ;;
esac

##################################################################
# Unit Functions for all NIX OS

log_message() {
  echo "$1"
}

log_string() {
  case "${SYSTEM_TYPE}" in
    solaris )
      echo "$1\c"
      ;;
    * )
      echo -n "$1"
      ;;
  esac  
}

log_debug_message() {
  [ $SYSTEM_DEBUG -eq 1 ] && log_message "$1"
}

rotate_log_file() {
  [ -f "$1.3" ] && rm -f "$1.3"
  [ -f "$1.2" ] && mv -f "$1.2" "$1.3"
  [ -f "$1.1" ] && mv -f "$1.1" "$1.2"
  [ -f "$1" ]   && mv -f "$1"   "$1.1"
  return 0
}

create_symlink_for_java_home() {
  if [ ! -n "$JAVA_HOME" ]; then
    log_message "Please set JAVA_HOME!"
    exit 1
  else
    log_message "Create JAVA_HOME symbolic link at $OBSR_HOME/java"
    cd "$OBSR_HOME"
    ln -sf "${JAVA_HOME}" "java"
    return 0
  fi
}

process_count_with_pid() {
  PID_VALUE=$1
  PS_OPTIONS=" "
  case "${SYSTEM_TYPE}" in
    solaris )
      PS_OPTIONS="-e"
      ;;
    * )
      ;;
  esac
  COUNT=`ps $PS_OPTIONS | awk -F" " '{print " "$1" "$2" "}' | grep -c " $PID_VALUE "`
  echo $COUNT
}

##################################################################
# Memory related functions

get_column_value() {
  local STRING_PATTERN="$1"
  local COL_NUM=$2
  echo $STRING_PATTERN | awk -F " " '{print $'"${COL_NUM}"'}'
}

get_physical_memory_in_kb() {
  case "${SYSTEM_TYPE}" in
    linux )
      linux_get_ram_info_in_kb
      ;;
    bsd )
      bsd_macos_get_ram_info_in_kb
      ;;
    macos )
      bsd_macos_get_ram_info_in_kb
      ;;
    solaris )
      solaris_get_ram_info_in_kb
      ;;
    * )
      echo "0"
      ;;
  esac
}

linux_get_ram_info_in_kb() {
  # Check the value by "cat /proc/meminfo"
  MEMORY_INFO=`cat /proc/meminfo | grep MemTotal:`
  TOTAL_MEMORY_IN_KB=`get_column_value "$MEMORY_INFO" 2`
  echo "$TOTAL_MEMORY_IN_KB"
}

bsd_macos_get_ram_info_in_kb() {
  REAL_MEM="`/sbin/sysctl -n hw.physmem`"
  REAL_MEM_IN_KB="`expr $REAL_MEM / 1024`"
  echo "${REAL_MEM_IN_KB}"
}

solaris_get_ram_info_in_kb() {
  REAL_MEM="`/usr/bin/kstat -p unix:0:system_pages:physmem | cut -f2`"
  PAGESIZE="`/usr/bin/pagesize`"
  REAL_MEM_IN_KB="`expr "$REAL_MEM" "*" "$PAGESIZE" "/" "1024"`"
  echo "${REAL_MEM_IN_KB}"
}

##################################################################
# Setup JAVA enrvironment, including JAVA_HOME and the options limit

# Prepare JAVA_HOME

# If $OBSR_HOME/java exist, it will always be used as JRE_HOME.
# Otherwise, we have to create symbolic link for the $OBSR_HOME/java to the predefined JRE_HOME

if [ -d "$OBSR_HOME/java" ];then
  JRE_HOME="$OBSR_HOME/java"
else
  case "${SYSTEM_TYPE}" in
    # Modify JRE_HOME for Mac OS X
    # It is required to be here for this file will be used in upgrade patch as well
    macos)
      JRE_HOME=/System/Library/Frameworks/JavaVM.framework/Home
      ln -sf "$JRE_HOME" "$OBSR_HOME/java"
      ;;
    linux)
      #  use bundled java if available
      case "${SYSTEM_ARCH}" in
        i[3-6]86)
          if [ -d $OBSR_HOME/java-linux-x86 ]; then
            JRE_HOME=$OBSR_HOME/java-linux-x86
            cd $OBSR_HOME
            ln -sf "java-linux-x86" "java"
          else
            create_symlink_for_java_home
          fi
          ;;
        x86_64 | amd64)
          if [ -d $OBSR_HOME/java-linux-x64 ]; then
            JRE_HOME=$OBSR_HOME/java-linux-x64
            ln -sf "java-linux-x64" "java"
          else
            create_symlink_for_java_home
          fi
          ;;
        arm*)
          ;;
        ppc*)
          ;;
        *)
          create_symlink_for_java_home
          ;;
      esac
      ;;
    bsd)
      #  use bundled java if available
      case "${SYSTEM_ARCH}" in
        i[3-6]86)
          if [ -d "$OBSR_HOME/java-freebsd-x86" ]; then
            JRE_HOME=$OBSR_HOME/java-freebsd-x86
          else
            create_symlink_for_java_home
          fi
          ;;
        x86_64 | amd64)
          if [ -d "$OBSR_HOME/java-freebsd-x64" ]; then
            JRE_HOME=$OBSR_HOME/java-freebsd-x64
          else
            create_symlink_for_java_home
          fi
          ;;
        *)
          create_symlink_for_java_home
          ;;
      esac
      ;;
    *)
      create_symlink_for_java_home
      ;;
  esac
fi

# Assumed we always have this directory for JAVA_HOME and JRE_HOME at this stage
[ -d "$OBSR_HOME/java" ] && JRE_HOME=$OBSR_HOME/java
JAVA_HOME=$JRE_HOME

##################################################################
# Define JAVA limits

SYSTEM_PHYSICAL_MEMORY_IN_KB=`get_physical_memory_in_kb`
SYSTEM_PHYSICAL_MEMORY_IN_MB=`expr $SYSTEM_PHYSICAL_MEMORY_IN_KB / 1024`

# Assumed we have 1GB memory for use in most case
SYSTEM_MEM_RESERVED_IN_MB=512
JAVA_THREAD_STACK_IN_KB=128
JAVA_HEAP_MIN_IN_MB=4

JAVA_EXTRA_OPTS="-verbose:gc -XX:+UseConcMarkSweepGC -XX:NewRatio=4 -XX:SurvivorRatio=4 -Xrs -XX:MaxPermSize=64m"

case "${SYSTEM_TYPE}" in
  # Modify JRE_HOME for Mac OS X
  # It is required to be here for this file will be used in upgrade patch as well

  linux)
    case "${SYSTEM_ARCH}" in
      x86_64 | amd64)
        JAVA_THREAD_STACK_IN_KB=256
        JAVA_HEAP_MAX_IN_MB=$JAVA64_HEAP_MAX_IN_MB
        ;;
      arm*)
        JAVA_EXTRA_OPTS=""
        ;;
      ppc*)
        ;;
      *)
        ;;
    esac
    ;;
  bsd)
    case "${SYSTEM_ARCH}" in
      x86_64 | amd64)
        JAVA_THREAD_STACK_IN_KB=256
        JAVA_HEAP_MAX_IN_MB=$JAVA64_HEAP_MAX_IN_MB
        ;;
      *)
        ;;
    esac
    ;;
  macos)
    case "${SYSTEM_ARCH}" in
      x86_64 | amd64)
        JAVA_THREAD_STACK_IN_KB=256
        JAVA_HEAP_MAX_IN_MB=$JAVA64_HEAP_MAX_IN_MB
        ;;
      *)
        SYSTEM_MEM_RESERVED_IN_MB=512
        ;;
    esac
    ;;
  solaris)
    SOLARIS_ARCH="`/usr/bin/isainfo -kv`"
    case "${SOLARIS_ARCH}" in
      64-bit*)
        JAVA_THREAD_STACK_IN_KB=256
        JAVA_HEAP_MAX_IN_MB=$JAVA64_HEAP_MAX_IN_MB
        JAVA_EXTRA_OPTS="-d64 ${JAVA_EXTRA_OPTS}"
        # set reservered memory here (64-bit)
        SYSTEM_MEM_RESERVED_IN_MB=1024
        ;;
      *)
        JAVA_THREAD_STACK_IN_KB=128
        # set reservered memory here (32-bit)
        SYSTEM_MEM_RESERVED_IN_MB=512
        ;;
    esac
    ;;
  *)
    ;;
esac

# It is assumed to have 4 cases of physical memory:
# 1) MEM <= 256MB
# 2) 256MB < MEM <= 512MB
# 3) 512MB < MEM <= 1GB
# 4) MEM > 1GB

if [ $SYSTEM_PHYSICAL_MEMORY_IN_MB -le 1024 ];then
  if [ $SYSTEM_PHYSICAL_MEMORY_IN_MB -le 512 ];then
    if [ $SYSTEM_PHYSICAL_MEMORY_IN_MB -le 256 ];then
      # 1) MEM <= 256MB
      SYSTEM_MEM_RESERVED_IN_MB=96
    else 
      # 2) 256MB < MEM <= 512MB
      SYSTEM_MEM_RESERVED_IN_MB=128
    fi
  else 
    # 3) 512MB < MEM <= 1GB
    SYSTEM_MEM_RESERVED_IN_MB=256
  fi
else
  # 4) MEM > 1GB
  SYSTEM_MEM_RESERVED_IN_MB=512
fi
# Server Options for process memory
# 
# Note: DON'T specify MAX_MEMORY with a value greater than the physical memory size

# Add special handling for UBS instances
if [ "${SYSTEM_IDENTITY}" = "UBS" ];then
  SYSTEM_PHYSICAL_MEMORY_IN_MB_HALVED=`expr $SYSTEM_PHYSICAL_MEMORY_IN_MB / 2`
  JAVA_THREAD_STACK_IN_KB=256
  JAVA_HEAP_MAX_IN_MB=$SYSTEM_PHYSICAL_MEMORY_IN_MB_HALVED
  SYSTEM_MEM_RESERVED_IN_MB=$SYSTEM_PHYSICAL_MEMORY_IN_MB_HALVED
fi

JAVA_XSS_VALUE="${JAVA_THREAD_STACK_IN_KB}"
JAVA_XMS_VALUE=""
JAVA_XMX_VALUE=""


if [ $JAVA_HEAP_MAX_IN_MB -eq 0 ]; then
  # We cannot determine the physical memory, use empty JAVA_XMX_VALUE
  JAVA_XMX_VALUE=""
else
  if [ $SYSTEM_MEM_RESERVED_IN_MB -ge $SYSTEM_PHYSICAL_MEMORY_IN_MB ]; then
    # No more physical memory left for JAVA, use half of it
    JAVA_XMX_VALUE=`expr $SYSTEM_PHYSICAL_MEMORY_IN_MB / 2`
  else
    SYSTEM_AVAILABLE_MEMORY=`expr $SYSTEM_PHYSICAL_MEMORY_IN_MB - $SYSTEM_MEM_RESERVED_IN_MB`
    if [ $JAVA_HEAP_MAX_IN_MB -ge $SYSTEM_AVAILABLE_MEMORY ]; then
      JAVA_XMX_VALUE="$SYSTEM_AVAILABLE_MEMORY"
    else
      JAVA_XMX_VALUE="$JAVA_HEAP_MAX_IN_MB"
    fi
  fi
fi

# Use the minimum supported value for Xmx if it is too small
[ $JAVA_HEAP_MIN_IN_MB -ge $JAVA_XMX_VALUE ] && JAVA_XMX_VALUE="$JAVA_HEAP_MIN_IN_MB"

# Use same value for the -Xms and -Xmx option
[ $JAVA_HEAP_MIN_MAX_SAME -eq 1 ] && JAVA_XMS_VALUE="$JAVA_XMX_VALUE"

# Now we have the suitable java memory options
JAVA_MEMORY_OPTS="-Xss${JAVA_XSS_VALUE}k"
[ ! -z "${JAVA_XMS_VALUE}" ] && JAVA_MEMORY_OPTS="${JAVA_MEMORY_OPTS} -Xms${JAVA_XMS_VALUE}m"
[ ! -z "${JAVA_XMX_VALUE}" ] && JAVA_MEMORY_OPTS="${JAVA_MEMORY_OPTS} -Xmx${JAVA_XMX_VALUE}m"

##################################################################
# Define tomcat environment

PATH=$JRE_HOME/bin:$PATH

CATALINA_HOME=$OBSR_HOME/tomcat
CATALINA_BASE=$OBSR_HOME
CATALINA_PID=/var/run/obsr.pid

TC_HOME=$OBSR_HOME
TC_LOG_PATH=$TC_HOME/logs
TC_WORK_PATH=$TC_HOME/work
TC_OBS_CONF_PATH=$TC_HOME/conf
CATALINA_TMPDIR=$TC_HOME/temp

TC_INSTANCE_NAME=inst1

TC_CONF_OPTS="-Dtc.log.path=$TC_LOG_PATH -Dtc.work.path=$TC_WORK_PATH -Dtc.obs.conf.path=$TC_OBS_CONF_PATH"
TC_OBS_OPTS="-Dcluster.server.name=$TC_INSTANCE_NAME"

CATALINA_OPTS="$TC_CONF_OPTS $TC_OBS_OPTS -Djavax.servlet.context.tempdir=$TC_WORK_PATH"
CATALINA_OUT="${TC_HOME}/logs/catalina.out"

# Define java environment
JAVA_NETWORK_OPTS="-Dsun.net.inetaddr.ttl=3600 -Dnetworkaddress.cache.ttl=3600 -Dsun.net.inetaddr.negative.ttl=300 -Dnetworkaddress.cache.negative.ttl=300 -Djava.net.preferIPv4Stack=true"
JAVA_JNI_OPTS="-Djava.library.path=$CATALINA_HOME/lib"
JAVA_OPTS="${JAVA_MEMORY_OPTS} ${JAVA_EXTRA_OPTS} ${JAVA_NETWORK_OPTS} ${JAVA_JNI_OPTS}"

##################################################################
# Export all required environment variables

export OBSR_HOME JAVA_HOME JRE_HOME PATH
export CATALINA_HOME CATALINA_BASE CATALINA_PID CATALINA_TMPDIR
export TC_LOG_PATH TC_WORK_PATH TC_OBS_CONF_PATH TC_INSTANCE_NAME TC_CONF_OPTS TC_OBS_OPTS
export CATALINA_OPTS CATALINA_OUT JAVA_OPTS

##################################################################
# Setup System limits

# Increase opened file limit
case "${SYSTEM_TYPE}" in
  linux)
    ulimit -n 32768
    ;;
  bsd)
    sysctl kern.maxvnodes=65536 > /dev/null
    ;;
  macos)
    ulimit -S -n 8192
    ;;
  solaris)
    ulimit -n 65536
    ;;
  *)
    ;;
esac

##################################################################
# Service startup execution detail
rotate_log_file "${CATALINA_OUT}"

[ -d "${CATALINA_TMPDIR}" ] && rm -rf "${CATALINA_TMPDIR}"/*
[ ! -d "${CATALINA_TMPDIR}" ] && mkdir "${CATALINA_TMPDIR}"
[ ! -d "${TC_LOG_PATH}" ] && mkdir "${TC_LOG_PATH}"

[ ! -d "/var" ] && mkdir "/var"
[ ! -d "/var/run" ] && mkdir "/var/run"

# Add UBS Support
if [ "${SYSTEM_IDENTITY}" = "UBS" ];then
  SYSTEM_TYPE="${SYSTEM_TYPE} (UBS)"
fi

##################################################################
OBSR_USER=${USER}
if [ "${OBSR_USER}" = "" ] ; then
  # handle the case if environment variable $USER is not defined (e.g. in SunOS 5.11)
  OBSR_USER=${LOGNAME}
fi

log_debug_message "-----------------------------------------------------------------------"
log_debug_message "You may set SYSTEM_DEBUG=0 to disable the debug message"
log_debug_message "-----------------------------------------------------------------------"
log_debug_message "Current User Name   : $OBSR_USER"
log_debug_message "Using SYSTEM_TYPE   : $SYSTEM_TYPE"
log_debug_message "Using SYSTEM_ARCH   : $SYSTEM_ARCH"
log_debug_message "Using PHYSICAL_MEM  : $SYSTEM_PHYSICAL_MEMORY_IN_MB (MB)"
log_debug_message "Using SYSTEM_RESV   : $SYSTEM_MEM_RESERVED_IN_MB (MB)"
log_debug_message "-----------------------------------------------------------------------"
log_debug_message "Using OBSR_HOME     : $OBSR_HOME"
log_debug_message "Using JAVA_HOME     : $JAVA_HOME"
log_debug_message "Using CATALINA_HOME : $CATALINA_HOME"
log_debug_message "Using CATALINA_OUT  : $CATALINA_OUT"
log_debug_message "Using JAVA_OPTS     : $JAVA_OPTS"
log_debug_message "Using CATALINA_OPTS : $CATALINA_OPTS"
log_debug_message "-----------------------------------------------------------------------"

log_message "Starting OBSR service"
cd "$OBSR_HOME"
nohup sh "${CATALINA_HOME}/bin/catalina.sh" start > /dev/null 2>&1 &
