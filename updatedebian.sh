#!/bin/bash 

###################################################################
#Script Name	: update debian stretch to buster                                                                                                                                                                        
#Args           	: 2020                                                                                           
#Author       	:amaresh pattanayak                                               
#Email         	:amreshpattnaik6@gmail.com                                        
###################################################################

cp -v /etc/apt/sources.list /root/
cp -rv /etc/apt/sources.list.d/ /root/
sed -i 's/stretch/buster/g' /etc/apt/sources.list
sed -i 's/stretch/buster/g' /etc/apt/sources.list.d/*
### see updated file now ###
cat /etc/apt/sources.list
apt update
apt upgrade
#presh q if asks
apt full-upgrade
reboot

#After reboot check the version
#uname -r
#lsb_release -a