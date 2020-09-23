ATSLIBNAME := myatslib

all: clean
	patscc -c -shared -o $(ATSLIBNAME).o $(ATSLIBNAME).dats
	ar -cvq lib$(ATSLIBNAME).a $(ATSLIBNAME).o
	ghc --make -L. -l$(ATSLIBNAME) Main.hs -o hello_ats

clean:
	-rm $(ATSLIBNAME).o $(ATSLIBNAME)_dats.c lib$(ATSLIBNAME).a hello_ats Main.o Main.hi
