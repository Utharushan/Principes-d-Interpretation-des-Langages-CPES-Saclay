package calc;

import java_cup.runtime.*;
import java.util.*;
import static calc.sym.*;

%%
%class Lexer
%unicode
%cup
%line
%column
%yylexthrow Exception

NL = \R
BLANC = [ \t\f]
NOMBRE = [0-9]+
COMMENTAIRE = [//][^\n]*
VAR = [A]
%%
{BLANC}   { /* ignore */ }
{NL}      { return new Symbol(NL); }
{COMMENTAIRE} { /* ignore */ }
\+        { return new Symbol(PLUS); }
\*        { return new Symbol(MULT); }
\/        { return new Symbol(DIV); }
\-        { return new Symbol(SUB); }
\(        { return new Symbol(LP); }
\)        { return new Symbol(RP); }
{NOMBRE}  { return new Symbol(CTE,Integer.parseInt(yytext())); }
.  { throw new Exception
      (String.format ("Line %d, column %d: illegal character: '%s'\n",
      		       yyline, yycolumn, yytext() )); }


