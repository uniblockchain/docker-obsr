#!/bin/bash

yum update -y
yum install -y net-tools

# Create Ahsay Group if not exist
getent group ahsay &>/dev/null || \
    groupadd --gid 400 ahsay

# Create Ahsay User if not exist
id -u ahsay &>/dev/null || \
    useradd --uid 400 --gid 400 --no-create-home ahsay

# Tweak Ahsay startup to use "catalina run" (interactive)
sed -e 's/catalina.sh" start.*/catalina.sh" run/g' -i /ahsay/bin/startup.sh
sed -e 's/nohup//g' -i /ahsay/bin/startup.sh

# Listen on ports > 1024
sed -e 's/port="80"/port="8080"/g; s/port="443"/port="8443"/g' -i /ahsay/conf/server.xml

# Restrict Ciphers https://forum.ahsay.com/viewtopic.php?f=82&t=13520
sed -e 's/sslProtocols="TLSv1"/sslProtocols="TLSv1" ciphers="SSL_RSA_WITH_RC4_128_MD5,SSL_RSA_WITH_RC4_128_SHA,TLS_RSA_WITH_AES_128_CBC_SHA,TLS_RSA_WITH_AES_256_CBC_SHA,SSL_RSA_WITH_3DES_EDE_CBC_SHA"/g' -i /ahsay/conf/server.xml

# Ease use of shutdown, eg: 'docker exec CONTAINER ahsay-shutdown'
echo '#!/bin/sh' > /usr/sbin/ahsay-shutdown
echo "pgrep --uid 400 -f /ahsay/java/bin/java > /var/run/obsr.pid" >> /usr/sbin/ahsay-shutdown
echo "pgrep --uid 400 -f /ahsay/java/bin/java > /var/run/rdr.pid" >> /usr/sbin/ahsay-shutdown
echo "pgrep --uid 400 -f /ahsay/java/bin/java > /var/run/cbs.pid" >> /usr/sbin/ahsay-shutdown
echo "pgrep --uid 400 -f /ahsay/java/bin/java > /var/run/$PLATFORM.pid" >> /usr/sbin/ahsay-shutdown
echo "su -m ahsay -c /ahsay/bin/shutdown.sh" >> /usr/sbin/ahsay-shutdown
chmod +x /usr/sbin/ahsay-shutdown

# Start OBS as ahsay user
su -m ahsay -c /ahsay/bin/startup.sh
