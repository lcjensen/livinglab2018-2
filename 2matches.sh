#!/bin/bash

control="0"
control2="0"


echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Vores første opgave er at indsamle tændstikker. Dem finder du i en af de hvide beholdere."
    echo " "
    play AudiofilerLivingLab/matches1.mp3
    break
fi
done

while [ $control = "0" ]
do

while true; do
if [ "$incCond" = "inc" ]; then
	echo "1: Højere"
	echo "2: Done"
	echo "3: Repeat instructions"
	echo " "
elif [ "$incCond" = "noInc" ]; then
	echo "3: Repeat instructions"
	echo "2: Done"
	echo " "
fi

read -rsn1 input
  	if [ "$input" = "1" ]; then
		if [ "$incCond" = "inc" ]; then
   		echo " "
   		echo "Højere"
		echo ""
		play AudiofilerLivingLab/matches2_1Inc.mp3
		elif [ "$incCond" = "noinc" ]; then
		echo "På venstre side af beholderen med det gule låg"
		echo " "
		play AudiofilerLivingLab/matches2_2noInc.mp3
		fi 

 	elif [ "$input" = "2" ]; then
		if [ "$incCond" = "inc" ]; then
			echo " "
			echo " 1: Right"
			echo " 2: Wrong"
			echo " "
			read -rsn1 input
			if [ "$input" = "1" ]; then
				echo " Ja nemlig"
				play AudiofilerLivingLab/matches2_3Inc.mp3
				control="1"
			elif [ "$input" = "2" ]; then
				echo "nej den anden beholder"
				play AudiofilerLivingLab/matches2_4Inc.mp3
				control="1"
			fi
		break
		elif [ "$incCond" = "noInc" ]; then 
			echo " "
			echo "Du finder dem i en af de hvide beholdere på den øverste hylde"
			echo ""
			play AudiofilerLivingLab/matches2_1noInc.mp3
			echo ""
			sleep 4
			echo "På venstre side af beholderen med det gule låg"
			play AudiofilerLivingLab/matches2_2noInc.mp3
			control="1"
			break
		fi
	
  	elif [ "$input" = "3" ]; then
   	echo " "
	echo "They are on the top shelf"
	echo " "
	play AudiofilerLivingLab/matches1.mp3
	fi
done
done

echo "1: User puts matches on robot"
echo "2: User keeps the matches"
echo " "
while true; do
read -rsn1 input
if [ "$input" = "1" ] && [ "$place" = "0" ]; then
    echo " "
    echo "Du er velkommen til at lægge alt af på mig."
    let "place++"
    echo " "
    play AudiofilerLivingLab/velkommen.mp3
    break
elif [ "$input" = "1" ] && [ "$place" > "0" ]; then
    echo " "
    echo "Det er så fint"
    echo " "
    play AudiofilerLivingLab/fint.mp3
    break
fi
break
done
./3glass.sh
