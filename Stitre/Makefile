
parta: compila test

partb: compilb test

partc: compilc test


compila: sous-titre-a.jflex
	jflex sous-titre-a.jflex
	javac *.java

compilc: sous-titre-c.jflex
	jflex sous-titre-c.jflex
	javac *.java

test:
	java Lexer test.SUB


sol: sous-titre-a-cor.jflex sous-titre-c-cor.jflex
	jflex sous-titre-a-cor.jflex
	jflex sous-titre-a3-cor.jflex
	jflex sous-titre-c-cor.jflex
	jflex sous-titre-d-cor.jflex
	javac *.java

testa: sol
	java Lexera test.SUB
testa3: sol
	java Lexera3 test.SUB
testc: sol
	java Lexerc test.SUB
testd: sol
	java Lexerd test.SUB

clean:
	rm -f *~ *.java *.class
