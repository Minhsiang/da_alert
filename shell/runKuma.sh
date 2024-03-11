SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )
source ${SCRIPTDIR}/base.sh


startdate=2023-07-08
enddate=2023-11-22

curr="$startdate"
while true; do
    [ "$curr" \< "$enddate" ] || { echo "$curr"; break; }
    echo "$curr"

    python3 -m luigi --module projects.kuma.statByDay_task playerGameByDay \
	--start ${curr} \
	--siteType  2 \
    --workers 1 \
    >> /tmp/DT_kuma/playerGameByDay_${NOW}.log 2>&1

    python3 -m luigi --module projects.kuma.statByDay_task playerTransByDay \
	--start ${curr} \
	--siteType  2 \
    --workers 1 \
    >> /tmp/DT_kuma/playerTransByDay_${NOW}.log 2>&1

    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
done
