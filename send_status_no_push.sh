#!/bin/bash
whoamI
cd /Users/julian/src/logs
find . -name "log_hardware_up" -type f -size +1M -delete

dig +short myip.opendns.com @resolver1.opendns.com > /Users/julian/src/logs/bolt.txt
date >> /Users/julian/src/logs/log_hardware_up

/usr/bin/git add log_hardware_up
/usr/bin/git add bolt.txt

/usr/bin/git add log_hardware_up
/usr/bin/git add bolt.txt

mail -s "$(echo -e "[Status] Bolt daemon is up and running\nFrom: Congelador <jgs.mamg@gmail.com> Reply-to: jgs.mamg@gmail.com\nContent-Type: text/html\n")" julianillog@hotmail.com < /dev/null
