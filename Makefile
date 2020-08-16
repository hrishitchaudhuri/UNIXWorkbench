all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo -n "Make was run on " >> README.md
	date | egrep -o "[A-Z][a-z]{2}\s[0-9]{2}\s[0-9]{2}\:[0-9]{2}" >> README.md
	echo -n "<br/> " >> README.md
	echo -n "Number of Lines of Code in the Program is " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

