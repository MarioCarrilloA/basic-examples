CC=gcc
CFLAGS=-I./src
DEPS = ./src/calc.h
OBJ = calc.o main.o 

%.o: src/%.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

mytest: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)


