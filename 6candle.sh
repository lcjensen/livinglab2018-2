#!/bin/bash

control="0"
count="0"
incCond="inc"


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

	if [ "$incCond" = "inc" ]; then

    		echo " "
		echo "1: venstre side"
		echo "2: højre side"
		echo "3: gentag"

		while true; do
		read -rsn1 input
	
		if [ "$input" = "1" ]; then
    			echo " "
			echo "Ja nemlig her, det er i den midterste skuffe"
			play AudiofilerLivingLab/candle4_1Inc.mp3
    			echo " "
			break
		elif [ "$input" = "2" ]; then
    			echo " "
			echo "lidt længere til venstre"
			play AudiofilerLivingLab/candle4_2Inc.mp3
			sleep 2
			echo " "
			echo " ja her det er i den midterste skuffe"
			play AudiofilerLivingLab/candle4_3Inc.mp3
			break
		elif [ "$input" = "3" ]; then
			echo " "
			echo "vi skal finde et stearinlys i en af skufferne"
			play AudiofilerLivingLab/candle5.mp3
			echo " "
			echo "1: venstre side"
			echo "2: højre side"
			echo "3: gentag"
		fi
		done


	elif [ "$incCond" = "noInc" ]; then
		
		echo " "
		echo "1: fortsæt"
		echo "2: gentag"	    	

		while true; do
		read -rsn1 input
	
		if [ "$input" = "1" ]; then
    			echo " "
			sleep 3
			echo "I den venstre side"
			play AudiofilerLivingLab/candle3_1noInc.mp3
			sleep 2
    			echo " "
			echo "I den midterste skuffe"
			play AudiofilerLivingLab/candle3_2noInc.mp3
			break
		elif [ "$input" = "2" ]; then
			echo " "
			echo "vi skal finde et stearinlys i en af skufferne"
			play AudiofilerLivingLab/candle5.mp3
			echo " "
			echo "1: fortsæt"
			echo "2: gentag"
		fi
		done
		
	fi

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
	break
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
