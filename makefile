GFORT=gfortran -cpp
#-macro_expand

test: test.f90 test_mod
	${GFORT} -o test test.f90 test_mod.o

test_mod: test_mod.f90
	${GFORT} -c test_mod.f90

clean:
	rm -f test test_mod.o
