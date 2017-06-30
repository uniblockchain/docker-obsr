FROM centos:latest
EXPOSE 8080 8443 9444-9464
WORKDIR /obsr


# 'ifconfig' is a fake tool that simply echos the machines MAC address.
#     This is necessary for the AHSAY_APP licensing.
COPY ifconfig /usr/bin/


# Bootstrap AHSAY_APP and SIGTERM receiver
COPY docker-entrypoint.sh /


# Download the *nix installer directly from ahsay.com (600 MB).
#ADD http://ahsay-dn.ahsay.com/v6/obsr/62900/obsr-nix.tar.gz ./
#RUN tar xzf obsr-nix.tar.gz \
#    && rm -f obsr-nix.tar.gz


# Alternative to the above, this copies a nearly-the-same AHSAY_APP containing
#  the following, space-saving (image reduced by 621 MB), exclusions:
#  *  java-linux-x86
#  *  webapps/obs/liveUpdate
#  *  webapps/obs/doc
#  *  webapps/obs/download
#  *  system/ads/
COPY obsr/ ./


# Create the limited user that will be used to run the AHSAY_APP
#    Note: the userhomes folder needs to be rw for UID/GUID 400
RUN groupadd --gid 400 ahsay \
    && useradd --uid 400 --gid 400 --no-create-home ahsay \
    && chown -R 400:400 .


# De-escalate from root
USER ahsay


ENTRYPOINT ["/docker-entrypoint.sh"]
