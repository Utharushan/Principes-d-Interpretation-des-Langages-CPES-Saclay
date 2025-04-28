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
VAR = [A-Z]
%%
{BLANC}   { /* ignore */ }
{NL}      { return new Symbol(NL); }
{VAR}     { return new Symbol(VA,(Integer)((int)(yycharat(0))-(int)('A'))); }
=         { return new Symbol(SET); }
"=="      { return new Symbol(EQ); }
":" 	  { return new Symbol(DP); }
"?"	  { return new Symbol(PI); }
"ou"      { return new Symbol(OU); }
"et"      { return new Symbol(ET); }
"non"     { return new Symbol(NON); }
\(        { return new Symbol(LP); }
\)        { return new Symbol(RP); }
"//"(.)*{NL} { return new Symbol(NL); }
"Vrai"       { return new Symbol(BOOL,true); }
"Faux"       { return new Symbol(BOOL,false); }
.  { throw new Exception (String.format ("Line %d, column %d: illegal character: '%s'\n", yyline, yycolumn, yytext() )); }


