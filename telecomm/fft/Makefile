OBJ = main.o fftmisc.o  fourierf.o
FILE = main.c fftmisc.c  fourierf.c
CFLAGS = -static -O3 -g

fft: ${OBJ} Makefile
	${CC} ${CFLAGS} ${OBJ} -o fft -lm
fftmisc.o: fftmisc.c
	${CC} ${CFLAGS} -c fftmisc.c
fourierf.o: fourierf.c
	${CC} ${CFLAGS} -c fourierf.c
main.o: main.c
	${CC} ${CFLAGS} -c main.c

clean:
	rm -rf *.o fft output*
