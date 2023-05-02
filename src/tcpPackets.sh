#!/bin/bash

#create a pcapng file using touch
touch captured.pcapng

#capture 50 packets within the created pcapng file
tshark -ni any -c 50 -w captured.pcapng

#convert from pcapng to pcap using tshark
tshark -F pcap -r captured.pcapng -w captured.pcap

#read file for tcp packets for port 80
tshark -r captured.pcap -Y "tcp.dstport == 80"

#print stats  on HTTP requests and responses
tshark -r captured.pcap -z http,tree | less
