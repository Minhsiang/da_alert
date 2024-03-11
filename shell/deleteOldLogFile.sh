find /tmp/detect* -type f -ctime +1 | xargs rm -rf
find /tmp/detectPlayerOrder -type f -ctime +0 | xargs rm -rf
find /tmp/detectGameCurrency -type f -ctime +0 | xargs rm -rf
find /tmp/owner_* -type f -ctime +1 | xargs rm -rf
find /home/da02_saturn2022_work/officalSource/luigi/files/ -name '*' -type f -ctime +10 | xargs rm -rf

