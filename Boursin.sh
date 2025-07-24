#!/bin/bash 

# Kleure code 
Roud='\033[0;31m'
Geel='\033[0m'
groean='\033[0;32m'
RESET='\033[0m'

#Ich gaon effe de installaasje checke.
echo -e "[*]Ich goan effe de installasje checke... Ein moment"
# Go installere 
if ! command -v go &> /dev/null || ! go version &> /dev/null; then
    echo -e "${Roud}[-] GO is neet good geïnstalleerd.${RESET}"
else
    echo "${groean}[+] GO is good geïnstalleerd!"
fi
#assetfinder installere
if command -v assetfinder >/dev/null 2>&1; then
    echo "${groean}[+]Assetfinder is al geïnstalleerd, jong."
else
    echo "${Roud}[-]Assetfinder is neet gevónje. Ich gaon 'm nou installeere..."
    go install github.com/tomnomnom/assetfinder@latest
    echo "Assetfinder is klaor. Vergeet neet om \$HOME/go/bin in dien PATH te zette, hè."
fi


