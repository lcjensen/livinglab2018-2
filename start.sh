#!/bin/bash
echo "Persuasion Condition"
echo "1: None"
echo "2: Expert"
echo "3: Research"
echo " "

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
	perCond="none"
    	break
elif [ "$input" = "2" ]; then
	perCond="expert"
    	break
elif [ "$input" = "3" ]; then
	perCond="research"
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
	incCond="noInc"
    	break
fi
done

place="0"

export place
export incCond
export perCond

. ./1greeting.sh
