#!/bin/bash

filename="$(date +"%d_%m_%y_%H_%M_%S").status"
touch ${filename}

echo -e ${HOSTNAME} > ${filename}
echo ${TIMEZONE} >> ${filename}
echo ${USER} >> ${filename}
echo ${OS} >> ${filename}
echo ${DATE} >> ${filename}
echo ${UPTIME} >> ${filename}
echo ${UPTIME_SEC} >> ${filename}
echo ${IP} >> ${filename}
echo ${MASK} >> ${filename}
echo ${GATEWAY} >> ${filename}
echo ${RAM_TOTAL} >> ${filename}
echo ${RAM_USED} >> ${filename}
echo ${RAM_FREE} >> ${filename}
echo ${SPACE_ROOT} >> ${filename}
echo ${SPACE_ROOT_USED} >> ${filename}
echo ${SPACE_ROOT_FREE} >> ${filename}