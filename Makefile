# all: say_hello generate
# .PHONY: all say_hello generate clean


# say_hello:
# 	@echo "Hello World"


# generate:
# 	@echo "Creating empty text files..."
# 	touch file-{1..10}.txt


# clean:
# 	@echo "Cleaning up..."
# 	rm *.txt


# # say_hello:
# # 	echo "Hello world"
# Usage:
# make        # compile all binary
# make clean  # remove ALL binaries and objects

.PHONY = all clean

CC = gcc                        # compiler to use

LINKERFLAG = -lm

SRCS := foo.c
BINS := foo

all: foo

foo: foo.o
		@echo "Checking"
		gcc -lm foo.o -o foo

foo.o: foo.c
		@echo "Creating object.."
		gcc -c foo.c

clean:
		@echo "Cleaning up..."
		rm -rvf foo.o foo