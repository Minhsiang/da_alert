SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )
source ${SCRIPTDIR}/base.sh

python3 -m luigi --module projects.alert.ownerGameRecallAlert.ownerGameRecallAlert_task detectGame \
--workers 1 \
--rangeTime 2 \
--teamPlusChatSN-recallOwnerGameAlert 'https://chat.googleapis.com/v1/spaces/AAAAE3-A-Zk/messages?key=AIzaSyDdI0hCZtE6vySjMm-WEfRq3CPzqKqqsHI&token=recCpiWUwfRF4xmBnSa8w85j4UN2-X5ef9EG6eDR6r8' \
--teamPlusChatSN-recallOwnerGameLessMessageAlert 'https://chat.googleapis.com/v1/spaces/AAAAjYhBawE/messages?key=AIzaSyDdI0hCZtE6vySjMm-WEfRq3CPzqKqqsHI&token=YU8rHgsuxbBGDj45gmY9I4Go7R-FEaCC5kjMC6JD7y4' \
--teamPlusChatSN-recallOwnerGameMoreMessageAlert '["84"]' \
--FalsePositiveSetting-rateOfNetwinLimit 0.5 \
--FalsePositiveSetting-numOfRounds 8 \
> /tmp/detectRecallOwnerGame/${NOW}.log 2>&1

