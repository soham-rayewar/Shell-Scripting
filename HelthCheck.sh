#!/bin/bash

##############
# this scipt id for the helth check of the system
# Auther:soham Rayewar
# Version : V1
# Date : 25/10/2024
##############
 
###################################################
# best practice to wright a Script's

set -x #debug mode 
set -e #exits the script when there is an error in case of pipe command it will onlr check the last command ( skbhdvacbjhass | echo) then also this command will run 
set -o pipefail # to over come the problem of set -e this is used in case of pipe commands


####################################################

#echo "print the Disk space"
 df -h

 #echo "printing the memory"
 free -g

 #echo " printing the cpu"
 nproc

 # process running in the system 
 ps -ef

 # for nay spesific commands like root 

 ps -ef | grep "root" | awk -F " " '{print $2}'
 # (grep)it will only displa root processes
 # (Awk) it is used to locate the specif column 
