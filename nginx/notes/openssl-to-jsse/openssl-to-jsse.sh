#!/bin/bash
CODE=`openssl ciphers -V  | grep $1 | sed 's/ //g' | cut -d '-' -f1 `
grep $CODE tls-parameters-4.csv | cut -d ',' -f3

$ cat resolve.sh 
#!/bin/bash
COMBINEDLIST=
while read line
do
        ENTRY=`./openssl2jsse.sh $line`
        echo $ENTRY
        COMBINEDLIST=$COMBINEDLIST,$ENTRY
done
echo "ciphers="$COMBINEDLIST
