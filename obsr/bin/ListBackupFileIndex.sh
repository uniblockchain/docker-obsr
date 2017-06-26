#!/bin/sh

#SAVE_DIR=`pwd`

EXE_DIR=`pwd`
SCRIPT_HOME=`dirname "$0"`
cd "$SCRIPT_HOME"
APP_BIN=`pwd`
APP_HOME=`dirname "$APP_BIN"`
cd "$APP_HOME"
OBSR_BIN=$APP_BIN
OBSR_HOME=.

#cd "$SAVE_DIR"

JAVA_HOME=
if [ Darwin = `uname` ]; then
    JRE_HOME=/System/Library/Frameworks/JavaVM.framework/Home
else
	case "`uname -m`" in
		i[3-6]86)
			if [ -d $OBSR_HOME/java16x32 ]; then
				JRE_HOME=$OBSR_HOME/java16x32
			else  
				JRE_HOME=$OBSR_HOME/java
			fi
			;;
		x86_64 | amd64)
			if [ -d $OBSR_HOME/java16x64 ]; then
				JRE_HOME=$OBSR_HOME/java16x64
			else  
				JRE_HOME=$OBSR_HOME/java
			fi
			;;
		*)
			JRE_HOME=$OBSR_HOME/java
			;;
	esac
fi
CLASSPATH="$OBSR_HOME/tomcat/lib/ani.jar:$OBSR_HOME/tomcat/lib/bcprov-jdk14-140.jar:$OBSR_HOME/webapps/obs/WEB-INF/lib/obs.jar"
JAVA_OPTS="-Xmx256m -Djava.library.path=$OBSR_HOME/tomcat/lib"
OBS_OPTS="-Dcatalina.base=$OBSR_HOME"
PATH="$JRE_HOME/bin:$OBSR_HOME/tomcat/lib:$PATH"
MAIN_CLASS="ListBackupFileIndex"
OBS_CONF_FILE="$OBSR_HOME/conf/obs.xml"

printUsage() 
{
   echo "[Usage]"
   echo "List a backup set's backup file indices for the content of a user's path"
   echo ""
   echo "  $0 USER BACKUP_SET_ID BACKUP_JOB CLIENT_PATH [ALL_ATTRIBUTES] [RECURSIVE]"
   echo ""
   echo "    USER            Login name of an user account in OBS"
   echo	"    BACKUP_SET_ID   Backup Set ID of Backup Set to list. E.g. 1228446687536"
   echo "    BACKUP_JOB      Backup job to list. E.g. \"Current\" or \"2008-12-31-23-59-59\""
   echo "    CLIENT_PATH     Path to list under USER account. Use \"\" to list all root "
   echo "                    directories"
   echo "    ALL_ATTRIBUTES  \"Y\" to show all headers, \"N\" to show only name, "
   echo "                    size, last modified. Default to \"Y\""
   echo "    RECURSIVE_LEVEL Level of subdirectories to traverse into. "
   echo "                    \"2\" means traversing into 2 levels of sub-folders"
   echo "                    \"-1\" means traversing into all sub-folders "
   echo "                    (Default to \"0\" which means traversing into no sub-folders) "
   echo ""
   echo "[Example]"
   echo "  $0 \"Peter\" \"1228446687536\" \"Current\" \"C:\\\\My Documents\\\\\" \"Y\" \"0\""
   echo ""
}

USER=$1
BSET_ID=$2
BACKUP_JOB=$3
CLIENT_PATH=$4
ALL_ATTRIBUTES=$5
RECURSIVE_LEVEL=$6

if [ "$USER" = "" ]; then
	eval printUsage
	echo "[Error]"
	echo "*** Please provide a USER parameter!"
	exit 0
else 
	if [ "$BSET_ID" = "" ]; then
		eval printUsage
		echo "[Error]"
		echo "*** Please provide a BACKUP_SET_ID parameter!"
		exit 0
	else 
		if [ "$BACKUP_JOB" = "" ]; then
			eval printUsage
			echo "[Error]"
			echo "*** Please provide a BACKUP_JOB parameter!"
			exit 0
		fi	
	fi	
fi
if [ "$ALL_ATTRIBUTES" = "" ]; then
   ALL_ATTRIBUTES="Y"
fi
if [ "$RECURSIVE_LEVEL" = "" ]; then
   RECURSIVE_LEVEL="0"
fi

echo "<!--"
echo "============= $0 Parameters ============="
echo "USER:            $USER"
echo "BACKUP_SET_ID:   $BSET_ID"
echo "BACKUP_JOB:      $BACKUP_JOB"
echo "CLIENT_PATH:     $CLIENT_PATH"
echo "ALL_ATTRIBUTES:  $ALL_ATTRIBUTES"
echo "RECURSIVE_LEVEL: $RECURSIVE_LEVEL"
echo "=========================================================="
echo "-->"

java $JAVA_OPTS $OBS_OPTS -cp "$CLASSPATH" $MAIN_CLASS "$OBS_CONF_FILE" "$USER" "$BSET_ID" "$BACKUP_JOB" "$CLIENT_PATH" "$ALL_ATTRIBUTES" "$RECURSIVE_LEVEL"
