#!/bin/bash
for A in *
do 
	if test -d "$A"
	then
		echo "$A: это каталог"
	else
		echo -n "$A: это файл и "
		if test -r $A
		then
			echo "его можно прочитать" 
			if test -w $A
			then 
				echo "и его можно записать"
			else
				echo "его нельзя записать"
			fi
		else
			if test -w $A
			then
				echo "его можно записать, но нельзя прочитать"
			else
				echo "его не возможо ни прочитать не записать"
			fi
		fi
	fi
done
