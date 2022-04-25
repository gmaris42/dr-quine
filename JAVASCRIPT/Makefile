all: Grace Colleen Sully

Grace:
	node Grace.js
	diff Grace.js Grace_kid.js

Colleen:
	node Colleen.js > colleen_output
	diff Colleen.js colleen_output
Sully:

clean:
	@rm -rf colleen_output Grace_kid.js Sully_*.js

fclean: clean

re: fclean all

.PHONY: all Grace Colleen Sully Sully_dif clean fclean re