CFLAGS=-std=c11 -g

ccc: ccc.c

test: ccc
		./test.sh

clean:
		rm -f ccc *.o *~ tmp*

.PHONY: test clean