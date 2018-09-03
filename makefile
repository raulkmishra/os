main: main.o add.o
	gcc -o main main.o add.o
main.o: main.c
	gcc -c -o main.o main.c
add.o: add.c
	gcc -c -o add.o add.c
staticlib: add.o
	ar -crv static.a add.o
dynamiclib:
	gcc -o static.so add.o
clean:
	rm -rf*o. main static.a
