host := `hostname`

all: lex-all calc-all

lex-all: lex-compil lex-test
calc-all: calc-compil calc-test

lex-compil: lex/mail.jflex
	cd lex && jflex mail.jflex
	javac -d bin lex/*.java

lex-test:
	java -cp bin:. Mail tests/lexical-test.txt

calc-compil : calc/Lexer.jflex calc/Parser.cup
	mkdir -p bin
	cd calc  && jflex Lexer.jflex
	cd calc  && java -jar /usr/share/java/java-cup-0.11b.jar -package calc Parser.cup
	javac -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. -d bin calc/*.java

calc-test:
	java -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. calc.Main tests/calc-test.txt

rendu:
	make clean
	cd .. && zip -r rendu-$(host).zip src

clean:
	rm -f *~ tests/*~ lex/*~ calc/*~ lex/Mail.java calc/sym.java calc/parser.java calc/Lexer.java
	rm -rf bin


