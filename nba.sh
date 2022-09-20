#!/bin/bash
#title          :nba.sh
#description    :This script displays the NBA teams
#author         :Mallah-Divine Mallah
#date           :09152022
#version        :1
#usage          :./nba.sh
#notes          :The script demostrates taking informatio for and API and pulling out data
#bash_version   :5.1.16(1)-release
#============================================================================

#API used https://www.balldontlie.io/api/v1/teams

#Variables 

LGRAY='\x1b[92'
MAG='\x1b[35m'
CYAN='\033[01;36m'
YELLOW='\033[01;33m'
BLUE='\x1b[34m'
PURPLE='\033[01;35m'
RED='\033[01;31m'
NONE='\033[00m'
BLINK="\x1b[5m"

nba=("UTA" "CHA" "GSW" "NOP" "SAS")

#created a menu
PS3='Choose an NBA team and revealed its official name: '
select n in "${nba[@]}"; do
    case $n in
	"UTA")
            utah=$(curl -s https://www.balldontlie.io/api/v1/teams | jq '.data[28].full_name')
            echo -e " ${PURPLE}UTA official name is $utah.${NONE}"
             ;;
	"CHA")
            cha=$(curl -s https://www.balldontlie.io/api/v1/teams | jq '.data[3].full_name')
            echo -e "${BLUE} CHA official name is $cha.${NONE}"
	     ;;
	"GSW")
            gsw=$(curl -s https://www.balldontlie.io/api/v1/teams | jq '.data[9].full_name')
            echo -e "${YELLOW} GSW official name is $gsw.${NONE}"
             ;;
	"NOP")
             nop=$(curl -s https://www.balldontlie.io/api/v1/teams | jq '.data[18].full_name')
            echo -e "${CYAN} NOP official name is $nop${NONE}"
	     ;;
	"SAS")
             sas=$(curl -s https://www.balldontlie.io/api/v1/teams | jq '.data[26].full_name')
            echo -e "${MAG} SAS official name is $sas${NONE}."
             ;;

           *) echo -e "${BLINK}Really U know that's not an option.${NONE}";;
    esac
done


