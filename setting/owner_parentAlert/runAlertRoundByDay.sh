SHELL=/bin/bash      
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin
NOW=`date '+%Y%m%d_%H%M'`
/home/rmjames0345/offical/owner_parentAlert/dist/owner_parentAlert -c  > /tmp/detectRoundByDay/${NOW}.log 2>&1
