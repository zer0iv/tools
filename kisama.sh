#!/bin/bash
#variable
reposity='zer0iv'
#Colors
cyan='\e[0;36m'
lightcyan='\e[96m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
echo ""
sleep 2
# Check root
[[ `id -u` -eq 0 ]] > /dev/null 2>&1 || { echo  $red "You must be root to run the script"; echo ; exit 1; }

# detect ctrl+c exiting
trap ctrl_c INT
ctrl_c() {
clear
echo -e $red"[*] (Ctrl + C ) Detected, Trying To Exit ..."
sleep 1
echo ""
echo -e $yellow"[*] Thanks For Using GitTool  :)"
exit
}
clear
# check internet 
function checkinternet {
  ping -c 1 google.com > /dev/null
  if [[ "$?" != 0 ]]
  then
    echo  " Checking For Internet: FAILED
    This Script Needs An Active Internet Connection"
    echo " GitClin Will Now Exit"
    echo && sleep 2
    kexit
  else
    echo " Checking For Internet: CONNECTED"
  fi
}
checkinternet
sleep 2
#banner head
function main_menu()
{
    while :
    do

echo -e $blue ""

echo "_______  _______  _______  _______ _________         "
echo "/ ___   )(  ____ \(  ____ )(  __   )\__   __/|\     /|"
echo "\/   )  || (    \/| (    )|| (  )  |   ) (   | )   ( |"
echo "    /   )| (__    | (____)|| | /   |   | |   | |   | |"
echo "   /   / |  __)   |     __)| (/ /) |   | |   ( (   ) )"
echo "  /   /  | (      | (\ (   |   / | |   | |    \ \_/ / "
echo " /   (_/\| (____/\| ) \ \__|  (__) |___) (___  \   /  "
echo "(_______/(_______/|/   \__/(_______)\_______/   \_/   "
                                                     


echo ""
echo -e $cyan"    Created by           $white":" $red Zer0iv  "
echo -e $cyan ""
echo -e $red"   ====================== Tool Lest =======================    ";
        echo
        echo "[1] ✔ Email-Attack	         [2] ✔ Bruteforce Instagram	[3] ✔ CamHack"
        echo "[4] ✔ The-Harvester	         [5] ✔ Admin-Control-panel	[6] X SocialEnginering"
	echo "[7] ✔ Denial-of-Service		 [8] ✔ Phishing			[7] ✔ Fake MSG "
        read -p "Select>: " option
        echo
        
        case "$option" in 
            1)  echo "Email-Attack"
                echo -e $red "############## Gmail-Attack ###################"
                sleep 2
                git clone https://github.com/$reposity/gmail-attack > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Gmail-Attack Downloaded " 
                cd gmail-attack
                chmod +x emailattack.py
                cd ..
                echo ""
                echo -e $red "########## Finish  ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
                ;;
            2)  echo "Brute Force Instagram"
                echo -e $red "############## Downloading ###################"
                sleep 2
                git clone https://github.com/Pure-L0G1C/Instagram.git > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Success Downloaded " 
                cd Instagram
                chmod +x instagram.py
                cd ..
                echo ""
                echo -e $red "########## Finish  ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
                ;;
           3)  echo "Webcam Hack"
                echo -e $red "############## Downloading ###################"
                sleep 2
                git clone https://github.com/zer0iv/aib.git > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Success Downloaded " 
                cd aib
                chmod +x aib.sh
                cd ..
                echo ""
                echo -e $red "########## Finish  ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
		;;
           4)  echo "The Harvester"
                echo -e $red "############## Downloading ###################"
                sleep 2
                git clone https://github.com/laramies/theHarvester > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Success Downloaded " 
                cd aib
                chmod +x theHarvester.py
                cd ..
                echo ""
                echo -e $red "########## Finish  ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
		;;
           7)  echo "Denial-Of-Service"
                echo -e $red "############## Downloading ###################"
                sleep 2
                git clone https://github.com/zer0iv/dos.git > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Success Downloaded " 
                cd dos
                chmod +x dos.py
                cd ..
                echo ""
                echo -e $red "########## Finish  ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
		;;
           8)  echo "Shellphish"
                echo -e $red "############## Downloading ###################"
                sleep 2
		git clone https://github.com/thelinuxchoice/shellphish
                echo  -e $green "[ ✔ ] Success Loaded " 
                echo ""
                echo -e $red "########## Finish  ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
		;;
           5)  echo "Admin-Panel"
		echo "loading......"
		sleep 2
		firefox http://zer0iv.6te.net/home/shel.php
                echo ""
                echo -e $red "########## Finish  ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
		;;
           9)  echo "Fake MSG"
		echo "loading......"
		sleep 2
		firefox https://www.kusms.com/index.php
                echo ""
                echo -e $red "########## Finish  ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
		;;
	   
            q)  echo -e $yellow " Thanks For Using My Tools Good Bye  {Zer0iv}  !!"
                echo
                exit 0 
                ;;
        esac
    done
}
main_menu
