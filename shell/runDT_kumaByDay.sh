SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )
source ${SCRIPTDIR}/base.sh
SITE_TYPE=(1 2)

for siteType in ${SITE_TYPE[@]}
do
    var='{"siteType":'
    var+=${siteType}
    var+='}'

    python3 -m luigi --module projects.kuma.statByDay_task RangeDailyBase \
    --of playerInfo \
    --start $(date -u -d "-2 day" +%Y-%m-%d) \
    --stop $(date -u -d "-1 day" +%Y-%m-%d) \
    --of-params ${var} \
    --workers 1 \ 
    >> /tmp/DT_kuma/playerInfo_${NOW}.log 2>&1

    python3 -m luigi --module projects.kuma.statByDay_task RangeDailyBase \
    --of playerGameByDay \
    --start $(date -u -d "-2 day" +%Y-%m-%d) \
    --stop $(date -u -d "-1 day" +%Y-%m-%d) \
    --of-params ${var} \
    --workers 1 \
    >> /tmp/DT_kuma/playerGameByDay_${NOW}.log 2>&1

    python3 -m luigi --module projects.kuma.statByDay_task RangeDailyBase \
    --of playerTransByDay \
    --start $(date -u -d "-2 day" +%Y-%m-%d) \
    --stop $(date -u -d "-1 day" +%Y-%m-%d) \
    --of-params ${var} \
    --workers 1 \
    >> /tmp/DT_kuma/playerTransByDay_${NOW}.log 2>&1
done
