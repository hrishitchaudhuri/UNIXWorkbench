#!/usr/bin/env bash
function filepr {
	cd $1
	local file_=$(ls -l | wc -l)
	echo `expr $file_ - 1`
}

FILES=$(filepr ./)

echo "GUESS HOW MANY FILES ARE IN THIS DIRECTORY:"
read guess

while [[ $guess -ne $FILES ]]
do
	if [[ $guess -lt $FILES ]]
	then
		echo "TOO LOW. TRY AGAIN."
	else
		echo "TOO HIGH. TRY AGAIN."
	fi

	read guess
done

echo "CONGRATULATIONS. YOU GUESSED CORRECTLY."
