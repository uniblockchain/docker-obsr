#!/bin/bash
# This script is compatible with cbs, obsr, and rdr

# Determine what ahsay product is installed
if [ -d "/cbs" ]; then
    AHSAY_APP=cbs
elif [ -d "/obsr" ]; then
    AHSAY_APP=obsr
elif [ -d "/rdr" ]; then
    AHSAY_APP=rdr
else
    echo "/cbs, /obsr, or /rdr folder must exist!"
    exit 1;
fi


# Stop catalina properly to avoid corrupting Profile.xml files and then exit
#   the container with exitcode 143 (128 + 15)
catalina_stop () {
  echo "Running Catalina Stop"
  pgrep --uid 400 -f java > /$AHSAY_APP/$AHSAY_APP.pid
  /$AHSAY_APP/bin/shutdown.sh
  exit 143;
}


# Intercept SIGTERM (issued from `docker stop`) then kill `tail -f` and run
#   `catalina_stop`
trap 'kill ${!}; catalina_stop' SIGTERM


# Start AHSAY_APP and get its PID
/$AHSAY_APP/bin/startup.sh &
pid="$!"


# Wait forever
while true; do
  tail -f /dev/null & wait ${!}
done
