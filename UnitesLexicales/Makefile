
all: compil test


compil: Lexer.class

Lexer.class: analyseur.jflex
	jflex analyseur.jflex
	javac *.java

test:	Lexer.class
	java Lexer test.txt

test0: Lexer.class
	java Lexer test0.txt

sol: analyseur-sol.jflex
	jflex analyseur-sol.jflex
	javac *.java
	java Lexer test.txt

clean:
	rm -f *~ *.java *.class
