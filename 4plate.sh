#!/bin/bash
control="0"

###Plate task
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Jeg tror, at det er en god idé, at vi får fat i en tallerken. De rene tallerkener står i opvaskemaskinen, så tag sådan en med." 
    echo " "
    play AudiofilerLivingLab/plate1.mp3
    break
fi
done

while [ "$control" = "0" ]
do
echo "1: User places plate on robot"
echo "2: User keeps plate"
echo "3: User does not pick up plate"

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
	echo "Please pick up a plate "
	play AudiofilerLivingLab/plate2.mp3
	break
fi
done
done

./5cookies.sh
