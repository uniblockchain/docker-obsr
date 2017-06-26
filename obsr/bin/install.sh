#!/bin/sh
# [Ahsay Offsite Backup Server and Replication Server] (version 6.29.0.0)

# -------------------------- Retrieve OBSR_HOME ---------------------------------
cd `dirname "$0"`
OBSR_BIN=`pwd`
OBSR_HOME=`dirname $OBSR_BIN`
OBSR_UTIL_BIN=$OBSR_HOME/util/bin

# ---------------------- Print Logging Message Header --------------------------
echo "Log Time: `date`"

# ------------ Verify if the privilege is enough for install ------------------
# Comment on 30-Aug-2010:
## Verify the privilege if the shell script "privilege.sh" exist. (which is aligned with the OBC)
echo ""
if [ -f "$OBSR_UTIL_BIN/privilege.sh" ]
then
  echo "Verifying current user privilege ..."
  "$OBSR_UTIL_BIN/privilege.sh" "install"
  [ $? -ne 0 ] && echo "Exit \"`basename $0`\" now!" && exit 1
else
  echo "The shell script \"$OBSR_UTIL_BIN/privilege.sh\" is missing."
  echo "Exit \"`basename $0`\" now!" && exit 1
fi
echo "Current user has enough privilege to \"install\"."
echo ""

# -------------------- Print Logging Message -----------------------------------
OS_IS_LINUX=0
case "`uname`" in
    Linux*)
        echo "Start configuration on Generic Linux Platform (`uname`)"
        OS_IS_LINUX=1
    ;;
    Solaris*) echo "Start configuration on Solaris 2.X Platform (`uname`)";;
    SunOS*)   echo "Start configuration on Solaris 5.X Platform (`uname`)";;
    *BSD*)    echo "Start configuration on BSD distribution Platform (`uname`)";;
    **)       echo "This OS `uname` is not supported by this script! Exit `basename $0` now!"
              exit 1 ;;
esac

# ---------------------- Setup OBSR required parameters -------------------------

# Current directory must be ${OBSR_HOME} for java symbolic link
cd "${OBSR_HOME}"
BUNDLED_JAVA_HOME=java
echo "Using OBSR_HOME $OBSR_HOME"

# JVM symbolic link has higher priority for installation than the Environment variable JAVA_HOME
if [ -x "${BUNDLED_JAVA_HOME}" ]
then
    echo "JVM symbolic link already exists, it will be used for installation."
else
    if [ -n "${JAVA_HOME}" ]
    then
        echo "\"JAVA_HOME\" variable is set."
        BUNDLED_JAVA_HOME="${JAVA_HOME}"
    else
        if [ "$OS_IS_LINUX" = "1" ]
        then
            case "`uname -m`" in
                i[3-6]86)
                    if [ -d "${OBSR_HOME}/java-linux-x86" ]
                    then
                        BUNDLED_JAVA_HOME="java-linux-x86"
                    fi
                ;;
                x86_64 | amd64)
                    if [ -d "${OBSR_HOME}/java-linux-x64" ]; then
                        BUNDLED_JAVA_HOME="java-linux-x64"
                    fi
                ;;
                *)
                    # Linux i[3-6]86, [ x86_64 | amd64 ] OS require custom JAVA_HOME
                    echo "Please create a symbolic link to \"${OBSR_HOME}/java\" or"
                    echo "Please set JAVA_HOME!"
                    exit 1;
                ;;
            esac
        else
            # Non Linux OS require custom JAVA_HOME
            echo "Please create a symbolic link to \"${OBSR_HOME}/java\" or"
            echo "Please set JAVA_HOME!"
            exit 1
        fi
    fi
    # Create symlink for JAVA_HOME
    ln -sf "${BUNDLED_JAVA_HOME}" "java" && echo "Current Directory: \"`pwd`\"." && echo "Created symlink \"java\" to \"${BUNDLED_JAVA_HOME}\"."
fi

# Verifying if the APP's JAVA_HOME is a valid JAVA_HOME.
STRING_JAVA_VERSION="java version,openjdk version"
OUTPUT_JAVA_VERSION=`"${OBSR_HOME}/java/bin/java" -version 2>&1`
OUTPUT_JVM_SUPPORT=0
BACKUP_IFS=$IFS
IFS=","
for word in $STRING_JAVA_VERSION; do
    if [ `echo "${OUTPUT_JAVA_VERSION}" | grep "${word}" | grep -cv "grep ${word}"` -le 0 ]
    then
      #echo "The Java Executable \"${OBSR_HOME}/java/bin/java\" is not a valid Java Executable. Exit \""`basename "$0"`"\" now."
      continue;
    else
      OUTPUT_JVM_SUPPORT=1
      break;
    fi
done
IFS=$BACKUP_IFS
if [ $OUTPUT_JVM_SUPPORT -eq 0 ]
then
    echo "The Java Executable \"${OBSR_HOME}/java/bin/java\" is not a valid Java Executable. Exit \""`basename "$0"`"\" now."
    exit 1
fi

# Verifying if the JAVA_VERSION is supported for APP installation.
MINIMUM_SUPPORTED_JVM_VERSION=1.5 # The JVM supported Version is defined in APP v6.0 onwards.
echo "Minimum supported JVM version: $MINIMUM_SUPPORTED_JVM_VERSION"
[ ! -f "$OBSR_UTIL_BIN/verify-jvm-version.sh" ] && echo "The shell script \"$OBSR_UTIL_BIN/verify-jvm-version.sh\" is missing." && echo "Exit \"`basename $0`\" now!" && exit 1
"$OBSR_UTIL_BIN/verify-jvm-version.sh" "$OBSR_HOME/java" "$MINIMUM_SUPPORTED_JVM_VERSION" 1>"/dev/null" 2>&1
if [ $? -ne 0 ]
then
    [ -L "$OBSR_HOME/java" ] && rm -f "$OBSR_HOME/java" && echo "Removed the Symlink \"$OBSR_HOME/java\"."
    echo "The JVM version is lower than \"$MINIMUM_SUPPORTED_JVM_VERSION\" which is not supported by the OBSR."
    echo "Please change the JAVA_HOME Directory and run the installation again."
    echo "Exit \"`basename $0`\" now!"
    exit 1
fi
echo "Current JVM version is supported for installation."

# ----------------------- Install OBSR As a Service -----------------------------

echo "Installing [ Ahsay Offsite Backup Server and Replication Server ]"
OBSR_SCRIPT_PATH=${OBSR_BIN}
OBSR_SCRIPT_NAME=obsr
OBSR_SCRIPT_USER=${USER}
if [ "${OBSR_SCRIPT_USER}" = "" ] ; then
  # handle the case if environment variable $USER is not defined (e.g. in SunOS 5.11)
  OBSR_SCRIPT_USER=${LOGNAME}
fi

cd "${OBSR_BIN}"

# Create the service script
case "`uname`" in
    Linux*)   OBSR_SCRIPT_SRC=obsr-sysv ;;
    Solaris*) OBSR_SCRIPT_SRC=obsr-sysv ;;
    SunOS*)   OBSR_SCRIPT_SRC=obsr-sysv ;;
    OpenBSD*) OBSR_SCRIPT_SRC=obsr-openbsd ;;
    *BSD*)    OBSR_SCRIPT_SRC=obsr-bsd ;;
    **)       echo "This OS `uname` is not supported by this script! Exit `basename $0` now!"
              exit 1 ;;
esac

sed "s|@sed.script.name@|${OBSR_SCRIPT_NAME}|g" < "${OBSR_BIN}/${OBSR_SCRIPT_SRC}" | sed "s|@sed.product.home@|${OBSR_HOME}|g" | sed "s|@sed.user.name@|${OBSR_SCRIPT_USER}|g" > "${OBSR_BIN}/${OBSR_SCRIPT_NAME}"
echo "[ Ahsay Offsite Backup Server and Replication Server ] Service Script created at ${OBSR_BIN}/${OBSR_SCRIPT_NAME}"

sh "${OBSR_UTIL_BIN}/install-service.sh" "${OBSR_SCRIPT_PATH}/${OBSR_SCRIPT_NAME}"

echo "[ Ahsay Offsite Backup Server and Replication Server ] setup completed!"

# ------------------------------ Startup OBSR -----------------------------------
echo "Startup [ Ahsay Offsite Backup Server and Replication Server ]"
sh "${OBSR_BIN}/startup.sh"
echo "Started [ Ahsay Offsite Backup Server and Replication Server ]"

exit 0
