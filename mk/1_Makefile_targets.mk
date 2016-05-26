mytest: src/calc.h src/calc.c src/main.c
	gcc -o mytest src/calc.c src/main.c -I./src

mytest2: src/calc.h src/calc.c src/main.c
	gcc -o mytest2 src/calc.c src/main.c -I./src
