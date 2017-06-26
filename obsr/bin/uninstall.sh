#!/bin/sh
# [Ahsay Offsite Backup Server and Replication Server] (version 6.29.0.0)

# --------------------------- Retrieve OBSR_HOME --------------------------------
cd `dirname "$0"`
OBSR_BIN=`pwd`
OBSR_HOME=`dirname $OBSR_BIN`
JAVA_HOME=$OBSR_HOME/java
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
  "$OBSR_UTIL_BIN/privilege.sh" "uninstall"
  [ $? -ne 0 ] && echo "Exit \"`basename $0`\" now!" && exit 1
else
  echo "The shell script \"$OBSR_UTIL_BIN/privilege.sh\" is missing."
  echo "Exit \"`basename $0`\" now!" && exit 1
fi
echo "Current user has enough privilege to \"uninstall\"."
echo ""

# -------------------- Print Logging Message -----------------------------------
export OBSR_HOME JAVA_HOME

echo "Using OBSR_HOME: $OBSR_HOME"
echo "Using JAVA_HOME: $JAVA_HOME"

# ------------------------------ Shutdown service ------------------------------

echo "Try to shutdown [ Ahsay Offsite Backup Server and Replication Server ]"
sh "$OBSR_BIN/shutdown.sh"
sleep 5
echo "Wait 5 seconds before [ Ahsay Offsite Backup Server and Replication Server ] is down"

SCRIPT_NAME=obsr

# ------------------------------ Remove service --------------------------------

echo "Remove [ Ahsay Offsite Backup Server and Replication Server ] ($SCRIPT_NAME) from service"

sh "${OBSR_UTIL_BIN}/remove-service.sh" $SCRIPT_NAME

echo "[ Ahsay Offsite Backup Server and Replication Server ] uninstall service is complete!"

echo "It is now safe to remove files from $OBSR_HOME"
