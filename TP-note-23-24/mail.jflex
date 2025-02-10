/* NOM :
   Prénom :
   Groupe :
   */
%%
%standalone 
%class mail 
%{
 int nb_url=0;
%}
%eof{
System.out.println("nombre d'URL mailto="+nb_url);
%eof}
AL = [a-z]
mailto = {AL}+
                  /* remplacer par une expression régulière qui reconnait une url correspondant à une adresse mail suivant spécification de l'énoncé */
%%
{mailto} 
	{ System.out.println(yytext()); /* A modifier */
	}
[^]     { }
