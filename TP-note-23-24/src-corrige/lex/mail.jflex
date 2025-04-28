/* NOM :
   Prénom :
   Groupe :
   */
%%
%standalone 
%class Mail 
%{
 int nb_url=0;
%}
%eof{
System.out.println("nombre d'URL mailto="+nb_url);
%eof}
AL = [a-zA-Z]
ALX = [a-zA-Z0-9\-]
mailto = "mailto:"{AL}({ALX}|\.{ALX})*\@{AL}{ALX}*\.{AL}{AL}{AL}?[^a-zA-Z]
%%
{mailto} 
	{ System.out.println(yytext().substring(0,yylength()-1)); 
	  nb_url++;
      	}
[^]     { }
