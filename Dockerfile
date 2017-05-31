FROM centos:latest
EXPOSE 8080 8443
ENV BASE_VER="6.27.0.0" HOTFIX_VER="6.27.0.2"
LABEL "version="$HOTFIX_VER
WORKDIR /obsr
ADD obsr-nix-$BASE_VER.tar.xz obsr-nix-hotfix-$HOTFIX_VER.tar.xz docker-entrypoint.sh ./
RUN chown -R 400:400 . 
ENTRYPOINT ["/obsr/docker-entrypoint.sh"]

