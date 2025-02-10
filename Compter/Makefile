
all: compil test


compil: analyseur.jflex
	jflex analyseur.jflex
	javac *.java

test:
	java Lexer test.txt

sol: analyseur-sol.jflex
	jflex analyseur-sol.jflex
	javac *.java
	java Lexer test.txt

clean:
	rm -f *~ *.java *.class
