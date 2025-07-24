#!/bin/bash 

# Kleure code 
Roud='\033[0;31m'
Geel='\033[0m'
groean='\033[0;32m'
RESET='\033[0m'
Blauw='\e[34m'
clear 

# ANSI rood
RED='\033[0;31m'
NC='\033[0m' # No Color

# Print rode figlet tekst
echo -e "${RED}"
figlet "Boursin, van de"
figlet "mestreechtener ★"
echo -e "${NC

#Ich gaon effe de installaasje checke.
echo -e "[*]Ich goan effe de installasje checke... Ein moment"
# Go installere 
if ! command -v go &> /dev/null || ! go version &> /dev/null; then
    echo -e "${Roud}[-]${RESET} GO is neet good geïnstalleerd"
else
    echo -e "${groean}[+]${RESET}  GO is good geïnstalleerd!"
fi
#assetfinder installere
if command -v assetfinder >/dev/null 2>&1; then
    echo -e"${groean}[+]${RESET} Assetfinder is al geïnstalleerd, jong."
else
    echo -e "${Roud}[-]${RESET} Assetfinder is neet gevónje. Ich gaon 'm nou installeere..."
    go install github.com/tomnomnom/assetfinder@latest
    echo "{groean}[+]${RESET}Assetfinder is klaor. Vergeet neet om \$HOME/go/bin in dien PATH te zette, hè."
fi
echo -e "${geel}[*]${RESET} "De installaasje is klaor, we gaon nao de dokumenteströktoer kieke"
