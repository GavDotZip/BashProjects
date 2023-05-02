#!/bin/bash

#display the network interfaces
echo "Network Interfaces: "
tshark -D

#use touch to create the file of captured packets within it
touch captured_packets.pcap
#take interface 1 (ens18) and capture 100 packets and write to file
tshark -i 1 -c 100 -w  captured_packets.pcap

#using grep and less we will get IPv4 packets within the file
echo "IPv4 Packets within captured_packets.pcap: "
tshark -r  captured_packets.pcap | grep 'ip ' | less
