%%
%class Lexer
%standalone
%{
// Déclarations supplémentaires
int num = 0; // Variable pour alterner entre le début et la fin du timecode
int[] t = new int[2]; // Tableau pour stocker les temps de début et de fin
%}
number = \{[0-9]+\} // Reconnaît un timecode entre accolades
SUBTITLE = [^\{\}\n]+ // Reconnaît le texte du sous-titre (pas d'accolades ni de retour à la ligne)
%%
{number} {
    t[num] = Integer.parseInt(yytext().substring(1, yytext().length() - 1)); // Extraction et conversion du timecode
    System.out.print((num == 0 ? "Du temps {" : " jusqu'au temps {") + t[num] + "}"); // Affichage du timecode
    num = 1 - num; // Alterne entre 0 (début) et 1 (fin)
}
{SUBTITLE} {
    System.out.println(" le sous titre: " + yytext()); // Affiche le sous-titre
}
\n {
    System.out.println(); // Ajoute une nouvelle ligne après chaque sous-titre
}
