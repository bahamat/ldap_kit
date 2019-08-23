ns1: ns_crypt.o ns1.o
	gcc -o $@ ns_crypt.o ns1.o

.PHONY: clean test

test: ns1
	./test.sh ns1 foo

clean:
	rm -f *.o ns1
