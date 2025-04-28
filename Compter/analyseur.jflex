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
mot= [^\s]+ /* Une expression régulière qui reconnait un mot comme une suite de caractères
               qui ne sont pas des espaces (blanc, tabulation \t ou retour à la ligne \n) */
%%
{mot}  {  nbWord+=1; nbChar+=yytext().length(); /* Incrémente le nombre de mots et ajoute la longueur du mot au compteur de caractères */ }
\n     {  nbLine+=1; nbChar+=1; /* Incrémente le nombre de lignes et ajoute 1 au compteur de caractères pour le retour à la ligne */ }
.      {  nbChar+=1; /* Incrémente le compteur de caractères pour tout autre caractère */ }

