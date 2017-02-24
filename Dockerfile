FROM centos
EXPOSE 8080 8443
WORKDIR /ahsay

ADD obsr-nix-6.27.0.0.tar.xz obsr-nix-hotfix-6.27.0.2.tar.xz docker-entrypoint.sh ./

RUN chown -R 400:400 .

ENTRYPOINT ["/ahsay/docker-entrypoint.sh"]
