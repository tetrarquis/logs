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

mail -s "[Status] Bolt daemon is up and running" m.angeles.martos@bmn.es,jgarrido@iaa.es < /dev/null

