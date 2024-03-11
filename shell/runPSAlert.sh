
SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )
source ${SCRIPTDIR}/base.sh

python3 -m luigi --module projects.alert.playerSystemAlert_task psAlert \
--workers 1 \
--psAlertSetting-rangeMinutes 60 \
--psAlertSetting-threshold 1000000 \
--psAlertSetting-teamPlusChatSN  '["3710"]' \
> /tmp/psAlert/${NOW}.log 2>&1

