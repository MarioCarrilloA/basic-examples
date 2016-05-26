CC=gcc
CFLAGS=-I./src
DEPS = src/calc.h

%.o: src/%.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

mytest: main.o calc.o 
	gcc -o mytest calc.o main.o $(CFLAGS)


