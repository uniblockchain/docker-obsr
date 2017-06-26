#!/bin/sh

cd `dirname "$0"`

../java/bin/java -cp ../util/lib/sxu.jar BrowseWebUI http ../conf/server.xml

