#!/bin/sh

EXE_DIR=`pwd`
SCRIPT_HOME=`dirname "$0"`
cd "$SCRIPT_HOME"
APP_BIN=`pwd`
OBS_HOME=`dirname "$APP_BIN"`

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

case "${SYSTEM_TYPE}" in
	linux)
	  #  use bundled java if available
	  case "${SYSTEM_ARCH}" in
		i[3-6]86)
		  JAVA_LIBRARY_PATH="$OBS_HOME/lib/LinX86"
		  JRE_HOME=$OBS_HOME/java-linux-x86
		  export JAVA_LIBRARY_PATH JRE_HOME
		  ;;
		x86_64 | amd64)
		  JAVA_LIBRARY_PATH="$OBS_HOME/lib/LinX64"
		  JRE_HOME=$OBS_HOME/java-linux-x64
		  export JAVA_LIBRARY_PATH JRE_HOME
		  ;;
		*)
		  ;;
	  esac
	  ;;
	bsd)
	  #  use bundled java if available
	  case "${SYSTEM_ARCH}" in
		i[3-6]86)
		  JAVA_LIBRARY_PATH="$OBS_HOME/lib/FbdX86"
		  JRE_HOME=$OBS_HOME/java-freebsd-x86
		  export JAVA_LIBRARY_PATH JRE_HOME
		  ;;
		x86_64 | amd64)
		  JAVA_LIBRARY_PATH="$OBS_HOME/lib/FbdX64"
		  JRE_HOME=$OBS_HOME/java-freebsd-x64
		  export JAVA_LIBRARY_PATH JRE_HOME
		  ;;
		*)
		  ;;
	  esac
	  ;;
	solaris)
	  SOLARIS_ARCH="`/usr/bin/isainfo -kv`"
	  case "${SOLARIS_ARCH}" in
		64-bit*)
			JAVA_EXTRA_OPTS="-d64 ${JAVA_EXTRA_OPTS}"
			JAVA_LIBRARY_PATH="$OBS_HOME/lib/SosX64"
			export JAVA_LIBRARY_PATH
		;;
		*)
			JAVA_LIBRARY_PATH="$OBS_HOME/lib/SosX86"
			export JAVA_LIBRARY_PATH
	  ;;
		esac
	;;
	*)
  ;;
esac

CLASSPATH=$OBS_HOME/check/ani.jar:$OBS_HOME/check/cbs.jar:$OBS_HOME/check/jdom-1.1.3.jar
JAVA_OPTS="-Xmx256m -Djava.library.path=$JAVA_LIBRARY_PATH"
OBS_OPTS=-Dcatalina.base=$OBS_HOME
PATH=$JRE_HOME/bin:$PATH
MAIN_CLASS=ShowV7Usage
OBS_CONF_FILE=$OBS_HOME/conf

java $JAVA_OPTS $OBS_OPTS -cp "$CLASSPATH" $MAIN_CLASS "$OBS_CONF_FILE"

