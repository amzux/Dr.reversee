#!/bin/bash
n1="1"
n2="2"
n3="3"
n4="4"
y="Y"
yy="y"
echo "+====================+"
echo "|     Dr.Reversee    |"
echo "+====================+"
echo "			    "
echo "[1] Messed With Repo"
echo "[2] Could Not Resolve Repo"
echo "[3] NO GUI after Update "
echo "[4] Safe Update"

read qas


if [ $qas = $n1 ] ; then
clear;sleep 2 ;echo "OK MAN! DONT DO NEXT TIME"
sudo rm -r /etc/apt/sources.list
sudo rm -r /etc/apt/sources.list.d/*
sudo touch /etc/apt/sources.list
sudo echo deb http://deb.parrotsec.org/parrot stable main contrib non-free>>/etc/apt/sources.list.d/parrot.list
sudo apt update | echo "Failed! Please check Internet:)) || select option 2"
fi ;

	if [ $qas = $n2 ] ; then
	sudo anonsurf start && sudo parrot-upgrade
        		echo "updated or still error? [Y/N]"
			read  qad
				 if [ $qad = $y ] ; then
				 echo "Change _apt:x:100:65534 to _apt:x:0:65534";sleep 2
				 sudo nano /etc/passwd
				 sudo parrot-upgrade
	                 	 fi ;
					if [ $qad = $yy ] ; then
					echo "Change _apt:x:100:65534 to _apt:x:0:65534";sleep 2
                                        sudo nano /etc/passwd
                                        sudo parrot-upgrade
					else
					echo "Cool"
					fi ;

	fi ;


if [ $qas = $n3 ] ; then
clear;sudo apt remove --purge xorg lightdm parrot-interface parrot-lxde
sudo apt install xorg sddm parrot-lxde parrot-interface
service xorg startc | service lightdm start
fi ;

if [ $qas = $n4 ] ; then
clear;sudo rm -r /etc/apt/sources.list
sudo rm -r /etc/apt/sources.list.d/*
sudo touch /etc/apt/sources.list
sudo echo deb http://deb.parrotsec.org/parrot stable main contrib non-free>>/etc/apt/sources.list.d/parrot.list
sudo parrot-upgrade
fi ;
