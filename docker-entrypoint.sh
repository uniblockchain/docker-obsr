#!/bin/bash
# This script is compatible with cbs, obsr, and rdr


# Compares major.minor.patch versions
version_comp () {
  if [[ $1 == $2 ]]; then
    return 0
  fi
  local IFS=.
  local i ver1=($1) ver2=($2)

  # fill empty fields in ver1 with zeros
  for ((i=${#ver1[@]}; i<${#ver2[@]}; i++)); do
    ver1[i]=0
  done

  for ((i=0; i<${#ver1[@]}; i++)); do
    if [[ -z ${ver2[i]} ]]; then
      # fill empty fields in ver2 with zeros
      ver2[i]=0
    fi

    if ((10#${ver1[i]} > 10#${ver2[i]})); then
      # $1 is greater
      return 1
    fi

    if ((10#${ver1[i]} < 10#${ver2[i]})); then
      # $1 is less
      return 2
    fi
  done

  # versions are equal
  return 0
}


# Determine what AHSAY_APP is installed
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


# Get product versions
AHSAY_VERSION=$(cat /$AHSAY_APP/version.txt)
TOMCAT_VERSION=$(tail -n1 /$AHSAY_APP/tomcat/TOMCAT*)


# Change catalina.sh to 'run' (prevent daemonizing)
# Remove `nohup` (prevent backgrounding)
# Change CATALINA_PID path to a directory `ahsay` can read/write
sed -i bin/startup.sh \
    -e 's/catalina.sh" start.*/catalina.sh" run/g' \
    -e 's/nohup//g' \
    -e "s@/var/run/$AHSAY_APP\.pid@/$AHSAY_APP/$AHSAY_APP.pid@g"

sed -i bin/shutdown.sh\
    -e "s@/var/run/$AHSAY_APP\.pid@/$AHSAY_APP/$AHSAY_APP.pid@g"


# Use ports 8080 and 8443
# Add requested hostname ("local server name") to Tomcat access logs
sed -i conf/server.xml \
    -e 's/port="80"/port="8080"/g' \
    -e 's/port="443"/port="8443"/g' \
    -e "s/pattern=\"common\"/pattern='%h %l %u %t %v "%r" %s %b'/g"


# if tomcat is v6.0.38 or newer, use sslEnabledProtocols instead of
#    sslProtocols and sslEnabledProtocols
version_comp $TOMCAT_VERSION "6.0.38"
if [[ $? != 2 ]]; then
  sed -i conf/server.xml \
      -e 's/sslProtocols="TLSv1"/sslEnabledProtocols="TLSv1,SSLv2Hello"/g'
fi


# Trust X-Forwarded-IPs from internal addresses
if (! grep -q "org.apache.catalina.valves.RemoteIpValve" conf/server.xml); then
  sed -i conf/server.xml \
      -e 's@</Host>@  \
        <Valve className="org.apache.catalina.valves.RemoteIpValve" \
          remoteIpHeader="X-Forwarded-For" \
          internalProxies="172.1[6-9]\.\d+\.\d+, 172.2[0-9]\.\d+\.\d+, \
          172.3[0-1]\.\d+\.\d+, 10\.\d+\.\d+\.\d+" /> \
      </Host>@g'
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
