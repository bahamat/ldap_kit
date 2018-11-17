ns: ns_crypt.o ns.o
	gcc -o $@ ns_crypt.o ns.o

.PHONY: clean test

test: ns
	./test.sh ns foo

clean:
	rm -f *.o ns ns1
