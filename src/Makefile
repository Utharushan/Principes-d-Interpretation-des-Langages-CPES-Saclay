all: compil test

test:
	java -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. calc.Main tests/test0.txt
	java -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. calc.Main tests/test1.txt
	java -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. calc.Main tests/test2.txt
	java -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. calc.Main tests/div_sub_test.txt
	java -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. calc.Main tests/multiple_test.txt
	java -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. calc.Main tests/commentaire_test.txt
test-lexer:
	java -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. calc.Lexer tests/test0.txt

compil : calc/Lexer.jflex calc/Parser.cup
	mkdir -p bin
	cd calc  && jflex Lexer.jflex
	cd calc  && java -jar /usr/share/java/java-cup-0.11b.jar -package calc Parser.cup
	javac -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. -d bin calc/*.java

clean:
	rm -f *~ tests/*~ calc/*~ calc/sym.java calc/parser.java calc/Lexer.java
