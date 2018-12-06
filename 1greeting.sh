#!/bin/bash

###Greeting
echo "1: Start"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Hej, hvordan går det?"
    play AudiofilerLivingLab/greeting1.mp3	
    echo " "
    break
fi
done

echo "1: Positive"
echo "2: Negative"
echo "3: None"
echo " "

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Det glæder mig at høre"
    play AudiofilerLivingLab/greeting2_1.mp3
    echo " "
    break
elif [ "$input" = "2" ]; then
    echo " "
    echo "Det er jeg ked af at høre"
    play AudiofilerLivingLab/greeting2_2.mp3
    break
else echo ""
break
fi
done

echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Jeg er en robot og jeg vil føre dig igennem denne leg. Bare følg med mig."	
    echo " "
    play AudiofilerLivingLab/greeting3.mp3
    break
fi
done

echo "1: Continue"
echo " "

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
	echo "Hej Paro. Paro er min fine kollega"
	echo " "
	play AudiofilerLivingLab/Paro.mp3
    break
fi
done
./2matches.sh

