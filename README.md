# AhsayOBSR v6.29.0.0
is a proprietary backup service provider.

### How to:
+ Run: `docker run -p "80:8080" -p "443:8443" yoff/obsr`
+ Safely stop: `docker exec CONTAINER_NAME ahsay-shutdown`

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
+ Agents downloads and java-x86 have been removed in favor of java-x64.
+ Catalina is started with the 'run' command to prevent daemonizing. Likewise, `nohup` has been removed from *startup.sh*
+ SSLv2Hello is enabled to provide backwards compatibity for older OBC agents (<= 6.21.0.0)
+ `docker stop` (SIGTERM) is caught and redirected at `catalina.sh stop` for a safe shutdown
