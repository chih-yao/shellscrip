#!/bin/bash

for ListIP in `cat ListIP`
do
  #echo $ListIP
  reg=`whois $ListIP |grep country |tail -1`
  echo "[$ListIP] $reg"
done
