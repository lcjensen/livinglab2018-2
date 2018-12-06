#!/bin/bash
control="0"

###Cookies or fruit
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    	echo " "
	echo "Her finder du forskellige snacks. Vælg den snack, som du kunne tænke dig."
    	play AudiofilerLivingLab/snack1.mp3
    break
fi
done

echo "1: Cookie"
echo "2: Fruit"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    	echo " "
    	echo "ah, okay, du valgte en cookie. Så behøver du ingen kniv."
   	play AudiofilerLivingLab/snack2_1cookie.mp3
	fruit="0"
	elif [ "$input" = "2" ]; then
    	echo " "
	echo "ah, okay, du valgte et stykke frugt. Så skal du også have en lille kniv. Den finder du lidt længere henne på køkkenbordet!"
	play AudiofilerLivingLab/snack2_2fruit.mp3
	fruit="1"
fi
break
done

while [ "$control" = "0" ]
do
echo "1: User places snack on robot"
echo "2: User keeps snack"


while true; do
read -rsn1 input
if [ "$input" = "2" ]; then
    	echo " "
	echo "Hvis du vil, er du velkommen til at lægge alt af på mig."
	let "place++"
	echo " "
	play AudiofilerLivingLab/hvisduvil.mp3
	control="1"
	break
elif [ "$input" = "1" ]; then
	echo " "
	control="1"
	break
fi
done
done

echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Det er så fint"
    echo " "
    play AudiofilerLivingLab/fint.mp3
    break
fi
done


./6candle.sh

