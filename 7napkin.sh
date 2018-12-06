#!/bin/bash
control="0"

###Napkin task
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Her på hylden finder du forskellige servietter. Vælg den du bedst kan lide og tage den med." 
    echo " "
    play AudiofilerLivingLab/napkin1.mp3
    break
fi
done

while [ "$control" = "0" ]
do
echo "1: User places napkin on robot"
echo "2: User keeps napkin"
echo "3: User does not pick up napkin"

while true; do
read -rsn1 input
if [ "$input" = "2" ]; then
    	echo " "
	control="1"
	break
elif [ "$input" = "1" ]; then
   	echo " "
    	echo "Du er velkommen til at lægge alt af på mig"
    	let "place++"
    	echo " "
    	play AudiofilerLivingLab/velkommen.mp3
	control="1"
	break
elif [ "$input" = "3" ];then
	echo "Vil du tag en serviet "
	play AudiofilerLivingLab/napkin2.mp3
	break
fi
done
done

./8placemat.sh
