#!/bin/bash

control="0"
count="0"


###Candle
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo  "I den her mørke tid skal det også være lidt hyggeligt. Jeg synes, at vi skal finde et stearinlys." 
    play AudiofilerLivingLab/candle1.mp3
    break
fi
done

echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Du finder det i en af skufferne."
    play AudiofilerLivingLab/candle2.mp3
    break
fi
done

while [ $control = "0" ]
do
	if [ "$incCond" = "inc" ]; then

	
		if [ "$count" = "0" ]; then
    		echo " "
		echo "1: More to the right"
		else 
		echo "1: a bit more"
		fi
		echo "2: Repeat"
		echo "3: Done"

		while true; do
		read -rsn1 input
	
		if [ "$input" = "1" ]; then
			if [ "$count" = "0" ]; then
    			echo " "
			echo "More to the right"
			play LivingLabAudio/candle2_1more.mp3
			count="1"
			else 
    			echo " "
			echo "a little bit more"
			play LivingLabAudio/candle2_2bit.mp3
			fi
		elif [ "$input" = "2" ]; then
    			echo " "
			echo "the candle is on the right side of the shelf"
			play LivingLabAudio/candle2_3more.mp3
		elif [ "$input" = "3" ]; then
    			echo " "
			echo "3: Yes, that’s right"
			play LivingLabAudio/candle2_4.mp3
			control="1"
		fi
		break
		done


	elif [ "$incCond" = "noinc" ]; then
	
		echo "1: Repeat"
		echo "2: Done"
	
		while true; do
		read -rsn1 input
	
		if [ "$input" = "1" ]; then
    			echo " "
			echo "I den venstre side"
			play AudiofilerLivingLab/candle3_1noInc.mp3
		elif [ "$input" = "2" ]; then
    			echo " "
			echo "I den midterste skuffe"
			play AudiofilerLivingLab/candle3_2noInc.mp3
			control="1"
		fi
		break
		done
	fi
done

echo "1: User puts candle on robot"
echo "2: User keeps the candle"
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
elif [ "$input" = "2" ]; then
	echo " "
else
break
fi
done

echo "1: Continue"
echo " "

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    	echo " "
	echo "Så mangler vi lige en serviet."
	echo " "
	play AudiofilerLivingLab/napkin.mp3
    break
fi
done

./7napkin.sh
