CC = gcc
CFLAGS = -c -Wall
#.PHONY: all

all: main.o mylib.a

main: main.o mylib.a
	$(CC) main.o mylib.o
main.o: main.c functions.h
	$(CC) $(CFLAGS) main.c 
func.o: helloworld.c functions.h
	$(CC) $(CFLAGS) helloworld.c
mylib.a: func.o
	ar -rcs mylib.a func.o

clean:
	rm *.o main
