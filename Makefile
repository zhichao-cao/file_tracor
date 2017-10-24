fpdd : fpdd.o log.o
	gcc -g -o fpdd fpdd.o log.o `pkg-config fuse --libs`
fpdd.o : fpdd.c log.h
	gcc -g -Wall `pkg-config fuse --cflags` -c fpdd.c
log.o : log.c log.h
	gcc -g -Wall `pkg-config fuse --cflags` -c log.c
clean:
	rm -rf *.o fpdd fpdd.log
