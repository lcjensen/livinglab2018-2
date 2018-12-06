#!/bin/bash
control="0"

###A glass
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Det næste vi skal samle ind er et glas. Det står på bordet derover."
    echo " "
    play AudiofilerLivingLab/glass1.mp3
    break
fi
done

while [ "$control" = "0" ]
do
echo "1: User puts glass on robot"
echo "2: User keeps the glass"
echo "3: User does not pick up glass"
echo " "
while true; do
read -rsn1 input
if [ "$input" = "1" ] && [ "$place" = "0" ]; then
    echo " "
    echo "Du er velkommen til at lægge alt af på mig."
    let "place++"
    echo " "
    play AudiofilerLivingLab/velkommen.mp3
    control="1"
    break
elif [ "$input" = "1" ] && [ "$place" > "0" ]; then
    echo " "
    echo "Det er så fint"
    echo " "
    play AudiofilerLivingLab/fint.mp3
    control="1"
    break
elif [ "$input" = "2" ]; then
	echo " "
	control="1"
	break
elif [ "$input" = "3" ]; then
	echo "vil du tage et glas"
        play AudiofilerLivingLab/glass 5.mp3
	break
fi
done
done

echo "1: Continue"
echo " "


while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
	if [ "$perCond" = "expert" ]; then
    	echo "Som ekspert ved du jo, at det er vigtigt at drikke rigelig med vand. De fleste deltagere drikker en halv liter efter den her leg."
		play AudiofilerLivingLab/glass2_1expert.mp3
		fi
	elif [ "$perCond" = "research" ]; then
    	echo " "
		echo "Forskning viser, at det er vigtigt at drikke rigelig med vand. De fleste deltagere drikker en halv liter efter den her leg."
		play AudiofilerLivingLab/glass2_2research.mp3
	fi
    break
fi
done

echo "1: Continue"
echo " "

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    	echo " "
	echo "Så skal vi hen til køkkenet og samle flere ting ind."
	echo " "
	play AudiofilerLivingLab/kokken.mp3
    break
fi
done
./4plate.sh
