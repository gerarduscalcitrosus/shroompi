#!/bin/sh
HOST='ftp.yourserver.com'
USER='ftp_user'
PASSWD='ftp_user_password'
FILE1='ribbon.jpg'
FILE2='nikon.jpg'
FILE3='temperature.txt'
FILE4='co2.txt'

cd /home/pi/output/latest
ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
binary
pass
put $FILE1
put $FILE2
put $FILE3
put $FILE4
quit
END_SCRIPT
exit 0
