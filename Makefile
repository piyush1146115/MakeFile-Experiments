all: say_hello generate
.PHONY: all say_hello generate clean
	

say_hello:
	@echo "Hello World"


generate:
	@echo "Creating empty text files..."
	touch file-{1..10}.txt


clean:
	@echo "Cleaning up..."
	rm *.txt


# say_hello:
# 	echo "Hello world"
