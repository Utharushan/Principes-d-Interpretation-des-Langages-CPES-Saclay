%%
%class Lexer
%standalone
entier = [0-9]+
%%
{entier} { System.out.println( "entier :" + yytext() );}
\* { System.out.println( "opérateur multiplier" );}
