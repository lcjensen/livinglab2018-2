#!/bin/bash
control="0"

###Placemat
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Det sidste vi mangler at samle ind, er dækkeservietter. Dem finder du her på hylden."
    echo " "
    play AudiofilerLivingLab/placemat1.mp3
    break
fi
done

echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Du kan vælge en af de to dækkeservietter."
    echo " "
    play AudiofilerLivingLab/placemat2.mp3
    break    
fi
done

while [ $control = "0" ]
do

echo "1. Continue"
echo "2. Repeat"
while true; do
read -rsn1 input
if [ "$input" = "2" ]; then
    echo " "
    echo "Du kan vælge en af de to dækkeservietter."
    echo " "
    play AudiofilerLivingLab/placemat2.mp3
    break
elif [ "$input" = "1" ]; then
    echo " "
    control="1"
    break
fi
done
done

control="0"

echo "1: Green placemat"
echo "2: Red placemat"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Ah, den grønne dækkeserviet. Det er også min favorit."
    echo " "
    play AudiofilerLivingLab/placemat2_2green.mp3
    break
elif [ "$input" = "2" ]; then
    echo " "
    echo "Ah, den røde dækkeserviet. Det er også min favorit."
    echo " "
    play LivingLabAudio/placemat2_1red.mp3
    break
fi
done

echo "1: User puts placemat on robot"
echo "2: User keeps placemat"
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
break
done


./9exit.sh
