SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )
source ${SCRIPTDIR}/base.sh

python3 -m luigi --module projects.alert.oneShotFish241.oneShotFish_task oneShotFish241 \
--workers 3 \
--parentIDs '["613f0496f6eac50001587939"]' \
--start $(date -u -d '10 minute ago' +%Y-%m-%dT%H%M) \
--end $(date -u  +%Y-%m-%dT%H%M) \
--chatRoom 'https://chat.googleapis.com/v1/spaces/AAAAPOYZ9p4/messages?key=AIzaSyDdI0hCZtE6vySjMm-WEfRq3CPzqKqqsHI&token=U-_RJEyg5mCbRWL54cyUVzZZX9MHebMINln7Z0ES73s' \
> /tmp/detectOneShotFish/${NOW}.log 2>&1
