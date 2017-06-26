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
# Since OBSR 5.5.5.0, we have integrated the shell scripts for the following OS-ARCH.
# OS : from `uname`
# ARCH: from `uname -m`

# Linux-i386 | Linux-i486 | Linux-i586 | Linux-i686 | Linux-amd64 | Linux-x86_64 | Linux-arm | Linux-ppc
# FreeBSD-i386 | FreeBSD-amd64
# OpenBSD-i386 | OpenBSD-amd64

SYSTEM_OS=`uname`
SYSTEM_ARCH=`uname -m`

SYSTEM_IDENTITY=
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

CATALINA_OPTS="-Djavax.servlet.context.tempdir=$TC_WORK_PATH"
CATALINA_OUT="${TC_HOME}/logs/catalina.out"

# Define java environment
# Tomcat shutdown should take least argument, JAVA_MEMORY_OPTS and JAVA_EXTRA_OPTS should be empty
JAVA_NETWORK_OPTS="-Djava.net.preferIPv4Stack=true"
JAVA_JNI_OPTS="-Djava.library.path=$CATALINA_HOME/lib"
JAVA_OPTS="${JAVA_MEMORY_OPTS} ${JAVA_EXTRA_OPTS} ${JAVA_NETWORK_OPTS} ${JAVA_JNI_OPTS} $TC_CONF_OPTS $TC_OBS_OPTS"

##################################################################
# Export all required environment variables

export OBSR_HOME JAVA_HOME JRE_HOME PATH
export CATALINA_HOME CATALINA_BASE CATALINA_PID CATALINA_TMPDIR
export TC_LOG_PATH TC_WORK_PATH TC_OBS_CONF_PATH TC_INSTANCE_NAME TC_CONF_OPTS TC_OBS_OPTS
export CATALINA_OPTS CATALINA_OUT JAVA_OPTS

# Add UBS Support
if [ "${SYSTEM_IDENTITY}" = "UBS" ];then
  SYSTEM_TYPE="${SYSTEM_TYPE} (UBS)"
fi

##################################################################
# Service shutdown execution detail
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
log_debug_message "-----------------------------------------------------------------------"
log_debug_message "Using OBSR_HOME     : $OBSR_HOME"
log_debug_message "Using JAVA_HOME     : $JAVA_HOME"
log_debug_message "Using CATALINA_HOME : $CATALINA_HOME"
log_debug_message "Using CATALINA_OUT  : $CATALINA_OUT"
log_debug_message "Using JAVA_OPTS     : $JAVA_OPTS"
log_debug_message "Using CATALINA_OPTS : $CATALINA_OPTS"
log_debug_message "-----------------------------------------------------------------------"

log_message "Stopping OBSR service"
cd "$OBSR_HOME"
sh "${CATALINA_HOME}/bin/catalina.sh" stop > /dev/null 2>&1

##################################################################
# Wait till process exits
# Wait time in unit of seconds for process to exit
WAIT_EXIT_TIMEOUT=120

if [ -f "${CATALINA_PID}" ] ; then
  PID=`cat "${CATALINA_PID}"`
  SLEEP_COUNT=$WAIT_EXIT_TIMEOUT
  PROCESS_COUNT=`process_count_with_pid $PID`
  while [ $PROCESS_COUNT -gt 0 ]
  do
    PROCESS_COUNT=`process_count_with_pid $PID`
    if [ $PROCESS_COUNT -eq 0 ] ; then
      log_message " OK"
      break
    fi
    case $SLEEP_COUNT in
      $WAIT_EXIT_TIMEOUT)
        log_string "Waiting for the OBSR process (PID=$PID) to terminate "
        ;;
      0)
        echo ""
        echo "Waited for $WAIT_EXIT_TIMEOUT seconds"
        log_message "Killing the OBSR process (PID=$PID) ..."
        if kill -9 $PID ; then
           log_message " OK"
        else
           log_message " FAILED"
        fi
        break
        ;;
      *)
        log_string "."      
        ;;
    esac
    sleep 1
    SLEEP_COUNT=`expr $SLEEP_COUNT - 1`
  done
  rm -f "${CATALINA_PID}"
fi