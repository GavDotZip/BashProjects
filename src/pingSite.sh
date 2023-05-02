#!/bin/bash

#ip address, I chose to ping GitHub
#IP=140.82.121.3
IP=www.github.com

#ping the address 5 times, with -c we can choose how many times to ping
#> output.txt ping -i 3 -c 5 $IP
ping -c 5 $IP &> output.txt

cat output.txt
#using > we can redirect the output the the ping to another file