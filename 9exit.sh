#!/bin/bash


##exit
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Nu kan du dække bordet med de ting, vi har samlet ind, sådan så du har et fint sted til at nyde din snack."
    play AudiofilerLivingLab/table1.mp3
    break
fi
done

echo "1: Sits down"
echo "2: Stays up"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Du må gerne tage noget vand."
   play AudiofilerLivingLab/table3water.mp3
    break
elif [ "$input" = "2" ]; then
    echo " "
    echo "Du er velkommen til at sætte dig."
   play AudiofilerLivingLab/table2.mp3
	echo " "
	echo "1: Continue"
	while true; do
	read -rsn1 input
	if [ "$input" = "1" ]; then
   		echo " "
		sleep 3
    		echo "Du må gerne tage noget vand"
  		play AudiofilerLivingLab/table3water.mp3
    		break
	fi
	break
	done
fi
break
done
    


echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Kunne du udfylde spørgeskemaet? Det er på den iPad, som ligger på bordet." 
    play AudiofilerLivingLab/table4iPad.mp3
    break
fi
done


echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Mange tak for din deltagelse. Jeg har hygget mig."
    play AudiofilerLivingLab/table5.mp3
    break
fi
done


