#!/bin/bash
# This script is compatible with cbs, obsr, and rdr

# Enfore existence of /cbs, /obsr, or /rdr
if [ -d "/cbs" ]; then
    PLATFORM=cbs
elif [ -d "/obsr" ]; then
    PLATFORM=obsr
elif [ -d "/rdr" ]; then
    PLATFORM=rdr
else
    echo "/cbs, /obsr, or /rdr folder must exist!"
    exit 1;
fi


# Create fake ifconfig
cat > /usr/bin/ifconfig << 'EOF'
#!/bin/bash

echo "$@" >> /tmp/gotcha
MAC=$(cat /sys/class/net/eth*/address)
echo "    ether $MAC"

EOF
chmod 755 /usr/bin/ifconfig


# Create Safe shutdown script (avoid corrupting Profile.xml files)
cat > /usr/bin/ahsay-shutdown << EOF
#!/bin/bash

pgrep --uid 400 -f /$PLATFORM/java/bin/java > /var/run/$PLATFORM.pid
su -m ahsay -c /$PLATFORM/bin/shutdown.sh

EOF
chmod 755 /usr/bin/ahsay-shutdown


# Create ahsay group if not exist
getent group ahsay &>/dev/null || \
    groupadd --gid 400 ahsay


# Create ahsay user if not exist
id -u ahsay &>/dev/null || \
    useradd --uid 400 --gid 400 --no-create-home ahsay


# Change catalina.sh to run interactively
sed -e 's/catalina.sh" start.*/catalina.sh" run/g' -i /$PLATFORM/bin/startup.sh
sed -e 's/nohup//g' -i /$PLATFORM/bin/startup.sh


# Listen on ports 8080 and 8443
sed -e 's/port="80"/port="8080"/g; s/port="443"/port="8443"/g' -i /$PLATFORM/conf/server.xml


# Add request hostname into logs
sed -e "s/pattern=\"common\"/pattern='%h %l %u %t %v \"%r\" %s %b'/g;" -i /$PLATFORM/conf/server.xml


# Restrict Ciphers https://forum.ahsay.com/viewtopic.php?f=82&t=13520
grep -q "ciphers" /$PLATFORM/conf/server.xml || \
    sed -e 's/sslProtocols="TLSv1"/sslProtocols="TLSv1" ciphers="SSL_RSA_WITH_RC4_128_MD5,SSL_RSA_WITH_RC4_128_SHA,TLS_RSA_WITH_AES_128_CBC_SHA,TLS_RSA_WITH_AES_256_CBC_SHA,SSL_RSA_WITH_3DES_EDE_CBC_SHA"/g' -i /$PLATFORM/conf/server.xml


# Start app
su -m ahsay -c /$PLATFORM/bin/startup.sh
