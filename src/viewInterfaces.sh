#!/bin/bash

#Using ifconfig we can find interfaces
echo "vi ifconfig_output.txt to view"

echo "Getting information from file to display..."

#Here we are writing the interfaces associated with IP4 and IP6 to files

macs= "$(grep -r -i 'inet ' ifconfig_output.txt)"

macEth= "$(grep -r -i 'ether ' ifconfig_output.txt)"

echo "====================================================="

#Now we can write the addresses to a seperate file

echo "WRITING IP ADDR TO FILE.. "

ip addr &> ip_addr_output.txt

echo "vi ip_addr_output.txt to view"

#Display information

echo "Getting information from file to display..."

macs1= "$(grep -r -i 'inet ' ip_addr_output.txt)"

macsEthr1= "$(grep -r -i 'ether ' ip_addr_output.txt)"
