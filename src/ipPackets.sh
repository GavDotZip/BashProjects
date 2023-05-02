#!/bin/bash

#use of -4 to find ip followed by hostname
#awk command will be used in order to print the ipv4 address
#cut used to extract sections, here we are cutting for filter
ip=$(/sbin/ip -o -4 addr list ens18 | awk '{print $4}' | cut -d/ -f1)

#use tshark on machine name ens18 and do not search for DNS,ARP,ICMP on host
tshark -i ens18 -c 30 --disable-protocol DNS,ARP,ICMP host $ip
