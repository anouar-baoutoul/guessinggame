README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "" >> README.md
	echo "Date: $$(date)" >> README.md
	echo "" >> README.md
	echo "Lines of code in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md

.PHONY: clean

