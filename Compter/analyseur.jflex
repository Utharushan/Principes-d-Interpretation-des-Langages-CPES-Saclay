%%
%class Lexer
%standalone
%{
int nbChar=0;
int nbWord=0;
int nbLine=0;
%}
%eof{
System.out.println("lines="+ nbLine + " words=" + nbWord + " chars=" + nbChar);
%eof}
mot= [a-z]* /* remplacer par une expression régulière qui reconnait un mot comme
               une suite de caractères quelconque qui ne sont pas
               des espaces (blanc, tabulation \t ou retour à la ligne \n */
%%
{mot}  {  nbWord+=1; /* A compléter */ }
\n     {  nbLine+=1; /* A compléter */ }
.      {  nbChar+=1; /* A compléter */ }

