#!/bin/bash
echo "Gender"
echo "1: Male"
echo "2: Female"
echo " "

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
	gender="male"
    	break
elif [ "$input" = "2" ]; then
	gender="female"
    	break
fi
done

echo "Persuasion Condition"
echo "0: 0"
echo "1: Gender"
echo "2: People"
echo " "

while true; do
read -rsn1 input
if [ "$input" = "0" ]; then
	perCond="0"
    	break
elif [ "$input" = "1" ]; then
	perCond="gender"
    	break
elif [ "$input" = "2" ]; then
	perCond="people"
    	break
fi
done

echo "Incremental Condition"
echo "1: Incremental"
echo "2: Non-incremental"
echo " "

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
	incCond="inc"
    	break
elif [ "$input" = "2" ]; then
	incCond="noinc"
    	break
fi
done

place="0"

export place
export incCond
export perCond
export gender

. ./1greeting.sh
