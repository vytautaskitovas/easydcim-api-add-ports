#!/bin/bash
echo "Enter device ID'e each in a new line and press Enter, then press CTRL + D to start adding PORTS"
deviceslist=`cat`
LAN="curl -s -g --request POST --url 'https://dcim.heficed.com/api/v2/device/"
LAN1="/port?data[port_number]=0&data[port_label]=LAN1&data[description]=NIC-A&data[speed]=1000000000&data[pullable]=1' --header 'apikey: ' "
LAN2="/port?data[port_number]=0&data[port_label]=LAN2&data[description]=NIC-B&data[speed]=1000000000&data[pullable]=1' --header 'apikey: ' "
for deviceid in $deviceslist
do

eval $LAN$deviceid$LAN1 | jq '.status'
eval $LAN$deviceid$LAN2 | jq '.status'

done
