%%
%class Lexer
%standalone
%{
int num = 0; // Variable pour alterner entre le début et la fin du timecode
int[] t = new int[2]; // Tableau pour stocker les temps de début et de fin

public static void pause(int n) { // Pause de n secondes (n * 1000 ms)
    try { Thread.sleep(n * 1000); }
    catch (InterruptedException e) { }
}

public final static void clearConsole() {
    System.out.print("\033[H\033[2J");
    System.out.flush();
}
%}
number = \{[0-9]+\} // Reconnaît un timecode entre accolades
FSTLINE = [^\{\}\n|]+ // Reconnaît la première ligne d'un sous-titre (pas d'accolades, de retour à la ligne ou de |)
LINE = \|[^\{\}\n|]+  // Reconnaît les lignes suivantes d'un sous-titre (commençant par |)
%%
{number} {
    t[num] = Integer.parseInt(yytext().substring(1, yytext().length() - 1)); // Extraction et conversion du timecode
    System.out.print((num == 0 ? "Du temps {" : " jusqu'au temps {") + t[num] + "}"); // Affichage du timecode
    num = 1 - num; // Alterne entre 0 (début) et 1 (fin)
}
{FSTLINE} {
    System.out.println(" sous-titre: " + yytext()); // Affiche la première ligne du sous-titre
}
{LINE} {
    System.out.println(yytext().substring(1)); // Affiche les lignes suivantes du sous-titre (en supprimant le |)
}
\n {
    System.out.println(); // Ajoute une nouvelle ligne après chaque sous-titre
}
