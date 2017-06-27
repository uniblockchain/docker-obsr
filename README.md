# AhsayOBSR v6.29.0.0
is a proprietary backup service provider.

### How to:
+ Run: `docker run -p "80:8080" -p "443:8443" yoff/obsr`
+ Safely stop: `docker stop --time 60 CONTAINER_NAME`

### Ports:
+ http listener is on **8080**
+ https listener is on **8443**.

### Paths:
+ OBSR Configuration: **/obsr/conf/**
+ OBSR/Catalina logs: **/obsr/logs/**
+ OBS System logs and policies: **/obsr/system/**
+ OBS Users: **/obsr/user/**
+ RPS System logs: **/obsr/rps-system/**
+ RPS reciever home: **/obsr/rcvshome/**

### Notes:
+ The application runs as the limited user "ahsay" (400:400)
+ Agents downloads, Agent liveupdates, docs, and java-x86 have been removed.
+ Catalina is started with the 'run' command to prevent daemonizing. Likewise, `nohup` has been removed from *startup.sh*
+ SSLv2Hello is enabled to provide backwards compatibity for older Ahsay agents (<= 6.21.0.0)
+ `docker stop` (SIGTERM) is caught and redirected at `catalina.sh stop` for a safe shutdown. If your OBS needs more than 10 seconds to stop, be sure to use the `--time n` flag prevent docker from prematurely resorting to `kill`.


## Docker-Compose
To see OBSR run behind nginx check out `docker-compose -f docker-compose-ngin.yml up`. Bare in mind, the diffie-hellman parameters file AND the default TLS certificates are public knowledge and therefore offer no security. So, create your own before taking this into production.
