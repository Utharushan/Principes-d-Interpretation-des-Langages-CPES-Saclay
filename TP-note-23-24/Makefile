all: lex-all

lex-all: lex-compil lex-test

lex-compil: mail.jflex
	jflex mail.jflex
	javac *.java

lex-test:
	java mail lexical-test.txt

clean:
	rm -f *~ mail.java mail.class


