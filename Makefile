CC=gcc
CFLAGS=-O3

all:dijkstra

dijkstra:main.o spaths.o
	$(CC) $(CFLAGS) main.o spaths.o -o dijkstra

main.o:main.c spaths.o
	$(CC) $(CFLAGS) -c main.c -o main.o

spaths.o:spaths.c spaths.h
	$(CC) $(CFLAGS) -c spaths.c -o spaths.o

clean:
	rm -f *.o dijkstra


