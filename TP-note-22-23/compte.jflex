//NOM Prénom :
%%
%class compte
%standalone
%{
int nbChar=0;
int nbmot=0;
int nbLine=0;
%}
%eof{
System.out.println("lines=" + nbLine + " words=" + nbmot + " chars=" + nbChar);
%eof}
mot=[^ \/\t\n]+
%%
"//"(.)*\R { 
    // Ignore les commentaires de type "//" en comptant les caractères et la ligne
    nbChar += yylength(); 
    nbLine++; 
}
{mot}      { nbmot++; nbChar += yylength(); }
\n         { nbLine++; nbChar++; }
.          { nbChar++; }

