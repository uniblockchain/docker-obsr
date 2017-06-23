FROM centos:latest as OBSR
EXPOSE 8080 8443
WORKDIR /obsr

# 'ifconfig' is a fake tool that simply echos the machines MAC address.
#     This is nesseary for the OBSR licensing.
ADD ifconfig /usr/bin/


# Downloads the OBSR installer from the official Ahsay download page
#ADD http://ahsay-dn.ahsay.com/v6/obsr/62900/obsr-nix.tar.gz ./
#RUN tar xzf obsr-nix.tar.gz \
#    && rm -f obsr-nix.tar.gz


# Alternative to the above, this copies a nearly-the-same file from a local
#   path. This local file does not have java x86 nor the agent downloads
ADD obsr-nix-6.29.0.0.tar.xz docker-entrypoint.sh ./


# This modified server.xml has the following changes from default:
#  * Listens on ports 8080, 8443
#  * Replaced depreciated "sslProtocols" with new "sslEnabledProtocols"
#  * "sslEnabledProtocols" has SSLv2Hello enabled for OBC < v6.21.2.0
#        compatibility
#  * Tomcat access logging includes hostname
#  * X-Forwarded-For IPs are trusted for reverse proxies (eg nginx)
ADD server.sslv2hello.xml conf/server.xml


# Create the limited user what will be used to run the OBSR application
#    Note: the userhomes folder needs to be rw for UID/GUID 400
RUN groupadd --gid 400 ahsay \
    && useradd --uid 400 --gid 400 --no-create-home ahsay \
    && chown -R 400:400 .


# De-escalate from root
USER ahsay


# Modify catalina.sh to run interactively
# Remove `nohup`
# Change CATALINA_PID location to /obsr/obsr.pid
RUN sed -e 's/catalina.sh" start.*/catalina.sh" run/g' \
    -e 's/nohup//g' \
    -e 's/\/var\/run\/obsr\.pid/\/obsr\/obsr.pid/g' \
    -i bin/startup.sh \
    && sed -e 's/\/var\/run\/obsr\.pid/\/obsr\/obsr.pid/g' -i bin/shutdown.sh


ENTRYPOINT ["/obsr/docker-entrypoint.sh"]
