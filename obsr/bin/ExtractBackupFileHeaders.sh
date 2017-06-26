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
MAIN_CLASS="ExtractBackupFileHeaders"
OBS_CONF_FILE="$OBSR_HOME/conf/obs.xml"

printUsage() 
{
   echo "[Usage]"
   echo "Extract all backup file headers in a hashcode directory (i.e. 0x??/0x??/0x??/0x??) to"
   echo "standard output"
   echo ""
   echo " $0 USER BACKUP_SET_ID BACKUP_JOB HASHCODE_PATH [ALL_ATTRIBUTES]"
   echo ""
   echo "    USER            Login name of an user account in OBS"
   echo	"    BACKUP_SET_ID   Backup Set ID of Backup Set to list. E.g. 1228446687536   "
   echo "    BACKUP_JOB      Backup job to list. E.g. \"Current\" or \"2008-12-31-23-59-59\""
   echo "    HASHCODE_PATH   Hashcode directory (e.g. \"0x11/0x22/0x33/0x44\") where backup "
   echo "                    files can be found. Default to \"root\""
   echo "    ALL_ATTRIBUTES  \"Y\" to show all headers, \"N\" to show only name, "
   echo "                    size, last modified. Default to \"Y\""
   echo ""
   echo "[Example]"
   echo "  $0 \"Peter\" \"1231819649253\" \"Current\" \"0x11/0x22/0x33/0x44\" \"Y\""
   echo ""
}

USER=$1
BSET_ID=$2
BACKUP_JOB=$3
HASHCODE_PATH=$4
ALL_ATTRIBUTES=$5

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
if [ "$HASHCODE_PATH" = "" ]; then
   HASHCODE_PATH="root"
fi
if [ "$ALL_ATTRIBUTES" = "" ]; then
   ALL_ATTRIBUTES="Y"
fi

echo "<!--"
echo "============= $0 Parameters ============="
echo "USER:           $USER"
echo "BACKUP_JOB:     $BACKUP_JOB"
echo "HASHCODE_PATH:  $HASHCODE_PATH"
echo "ALL_ATTRIBUTES: $ALL_ATTRIBUTES"
echo "=========================================================="
echo "-->"

java $JAVA_OPTS $OBS_OPTS -cp "$CLASSPATH" "$MAIN_CLASS" "$OBS_CONF_FILE" "$USER" "$BSET_ID" "$BACKUP_JOB" "$HASHCODE_PATH" "$ALL_ATTRIBUTES"
