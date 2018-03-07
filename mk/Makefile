BINARY := mytest

mytest: src/calc.h src/calc.c src/main.c
	gcc -o $(BINARY) src/calc.c src/main.c -I./src
clean:
	rm -f $(BINARY)
