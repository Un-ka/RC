.PHONY: clean

bme280: bme280.c bme280.h
	gcc -g -Wall -Wextra -pedantic -std=c11 -D_DEFAULT_SOURCE -D_BSD_SOURCE -o bme280 bme280.c -lwiringPi -lm
	
test: BMELIB.cpp bme280.h test.cpp
	g++ BMELIB.cpp test.cpp -std=c++11 -Wall -D_DEFAULT_SOURCE -D_BSD_SOURCE -o test_exe  -lwiringPi -lm
	
clean: 
	rm bme280 -Wall
