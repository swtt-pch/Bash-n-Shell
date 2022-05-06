#!/bin/bash
alias c="clear"

sudo passwd ubuntu 

sudo apt update && sudo apt upgrade
clear
sudo apt install software-properties-common
clear
sudo apt-get install xrdp lxde-core lxde tigervnc-standalone-server -y
clear

sudo add-apt-repository ppa:linuxuprising/java  
sudo apt update  
sudo apt install oracle-java12-installer  

java -version
if [ $? -eq 0 ]
then
echo \"java instalado\"
else
echo \"java não instalado\"
echo \"gostaria de instalar o java? S/n \"
read inst
if [ \"$inst\" == \"s\" ]
then
echo \"voce escolheu instalar o java\"
echo \"instalado java\"
sleep 2
sudo apt install default-jre
echo \"sua versão java é:\" & java -version
fi
fi
