while :
do

echo "1: Yes"
echo "2. No"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    play AudiofilerLivingLab/ja.mp3
    echo " "
    echo "Ja"
    break
elif [ "$input" = "2" ]; then
    play AudiofilerLivingLab/nej.mp3
    echo " "
    echo "Nej"
    break
fi
done
done
