FROM centos:latest
EXPOSE 8080 8443 9444-9464
WORKDIR /obsr


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


# bootstrap contains Entrypoint (SIGTERM receiver), Ahsay v7 license counter,
#  pseudo ifconfig, etc
COPY bootstrap/ /bootstrap


# Symlink pseudo ifconfig.
# Create the limited user that will be used to run the AHSAY_APP
#    Note: the userhomes folder needs to be rw for UID/GUID 400
RUN ln -sf /bootstrap/ifconfig /usr/bin/ifconfig \
    && groupadd --gid 400 ahsay \
    && useradd --uid 400 --gid 400 --no-create-home ahsay \
    && chown -R 400:400 . /bootstrap


# De-escalate from root
USER ahsay


CMD ["bash", "/bootstrap/docker-entrypoint.sh"]
