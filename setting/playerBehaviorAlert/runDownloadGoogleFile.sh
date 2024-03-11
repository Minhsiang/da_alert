SHELL=/bin/bash      
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin
NOW=`date '+%Y%m%d_%H%M'`
/home/rmjames0345/offical/playerBehaviorAlert/dist/playerBehaviorAlert -d > /tmp/downloadGoogleFile/${NOW}_download.log 2>&1
