#AhsayOBSR v6.27.0.2
is a proprietary backup service provider.

###How to:
+ Run: `docker run -p "80:8080" -p "443:8443" yoff/obsr`
+ Safely stop: `docker exec CONTAINER_NAME ahsay-stop`

###Ports:
+ http listener is at 8080
+ https is at 8443.

###Paths
+ Configuration is at: **/ahsay/conf/** and **/ahsay/system/**
+ User data:  **/ahsay/user/**
+ Logs: **/ahsay/user/**

###Notes:
+ The application runs as the limited user "ahsay" (uid 400)
+ Agents downloads and java-x86 have been removed.
+ Catalina is started with the 'run' command to prevent daemonizing. Likewise, `nohup` has been removed from *startup.sh*
+ This does not have SSLv3 enabled (default since 6.21.2.0) and therefore will not work with clients lower than 6.21.2.0
