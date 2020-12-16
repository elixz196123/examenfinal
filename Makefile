#Makefile
all: teclado
teclado: teclado.o
	ld -o $@ $+
teclado.o: teclado.s
	as -g -mfpu=vfpv2 -o $@ $<
clean:
	rm -vf teclado *.o
