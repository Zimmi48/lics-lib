CC=ocamlc -c
LINK=ocamlc -a -linkall
LIB=licsLib.cma
CMO=licsAst.cmo licsFileIO.cmo
DOC=licsAst.ml licsFileIO.ml
FLAGS=

all: $(CMO)
	$(LINK) $(FLAGS) -o $(LIB) $(CMO)

%cmo: %ml
	$(CC) $(FLAGS)  $<
clean:
	rm -f *.cm[io] *.o *~ $(LIB)
	rm -rf doc/

doc:	
	mkdir  -p doc
	rm -rf  doc/*
	ocamldoc -d doc -html $(DOC)
	sed -i "s/iso-8859-1/UTF-8/g" doc/*

