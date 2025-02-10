dir := /public/pil

all: lex-all

lex-all: lex-compil lex-test

lex-compil: compte.jflex
	jflex compte.jflex
	javac *.java

lex-test:
	java compte lexical-test.txt

clean:
	rm -f *~ compte.java compte.class


