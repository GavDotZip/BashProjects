#!/bin/bash

#Using tshark, capture required number of packets on any interface
#get user input for packets to capture
echo -n "Enter num of packets to capture: "
read num

#use touch in orddert to create the file a capture packets within it
touch captured_packets.pcap
#define what capturing packets on (ens18), and count of how many (-c)
tshark -c $num -i ens18 -w captured_packets.pcap

#get user input for what rpotocol to search for
echo -n "Enter protocol to search for: "
read protocol

#search file for requested protocol
tshark -r captured_packets.pcap | grep $protocol
