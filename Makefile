CC = gcc
CFLAGS= -Wall -O3 -ffast-math -std=gnu11
LDFLAGS = -L/usr/lib
LIBS = -lusb-1.0 -lSoapySDR -lpthread -lfftw3f -lcurl -lm

OBJS = soapysdr_wsprd.o wsprd.o wsprsim_utils.o wsprd_utils.o tab.o fano.o nhash.o

%.o: %.c
	${CC} ${CFLAGS} -c $< -o $@

soapysdr_wsprd: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -f *.o soapysdr_wsprd wspr_wisdom.dat hashtable.txt
