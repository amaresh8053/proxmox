#!/bin/bash 

###################################################################
#Script Name	:Proxmox 6+ installer                                                                                                                                                                         
#Args           	: 2020                                                                                           
#Author       	:amaresh pattanayak                                               
#Email         	:amreshpattnaik6@gmail.com                                        
###################################################################

echo "  _____                                           _____              _          _  _                       __     ___  
 |  __ \                                         |_   _|            | |        | || |                     /_ |   / _ \ 
 | |__) |_ __  ___ __  __ _ __ ___    ___ __  __   | |   _ __   ___ | |_  __ _ | || |  ___  _ __  __   __  | |  | | | |
 |  ___/| '__|/ _ \\ \/ /| '_ ` _ \  / _ \\ \/ /   | |  | '_ \ / __|| __|/ _` || || | / _ \| '__| \ \ / /  | |  | | | |
 | |    | |  | (_) |>  < | | | | | || (_) |>  <   _| |_ | | | |\__ \| |_| (_| || || ||  __/| |     \ V /   | | _| |_| |
 |_|    |_|   \___//_/\_\|_| |_| |_| \___//_/\_\ |_____||_| |_||___/ \__|\__,_||_||_| \___||_|      \_/    |_|(_)\___/"
 
 
 
echo "deb http://download.proxmox.com/debian/pve buster pve-no-subscription" | tee /etc/apt/sources.list.d/pve-install-repo.list
 
wget -qO - http://download.proxmox.com/debian/proxmox-ve-release-6.x.gpg | apt-key add -
 
apt update && apt dist-upgrade

apt install proxmox-ve postfix open-iscsi -y

apt remove os-prober -y