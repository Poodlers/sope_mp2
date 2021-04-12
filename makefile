all: s c

m: magic.c
	gcc -Wall -o magic magic.c 

s: server.o lib.o delay.c delay.h
	gcc -Wall -DDELAY=0 -o s delay.c lib.o server.o -pthread

c: client.c
	gcc -Wall -o c client.c delay.c -pthread

# server.o: server.c
# 	gcc -Wall -c -o server.o server.c

# lib.o: lib.c lib.h
# 	gcc -Wall -c -o lib.o lib.c

clean:
	rm -f s c