SHELL=/bin/bash      
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin
NOW=`date '+%Y%m%d_%H%M'`
/home/rmjames0345/offical/owner_parentAlert/dist/owner_parentAlert -p -r 180  > /tmp/owner_parentAlert_RTP/${NOW}_owner_parentAlert_RTP.log 2>&1

