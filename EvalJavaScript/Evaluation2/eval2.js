var nb = 0;
var m = 1;
// création de deux variables "nb" pour le nombre entré par l'utilisateur et "m" pour le multiple qu'on appliqueras a nb dans cet exercice.
nb = window.prompt("Vous souhaitez connaitre la table de multiplication de :");
//la variable prend la valur entré par l'utilisateur.
function TableMultiplication(nb)
// création de la fonction,entre les accolades on indique ce qu'elle doit faire.
{
    for (m = 1; m < 11; m++)
    // création d'une boucle for car le nombre de tour de boucle est déterminé à l'avance on indique donc entre parenthese la valeur initialde m puis sa valeur final et enfin la valeur du pas que l'on veut donner a m en l'occurence 1 et on sépare chaque informations par un ";".
    {
        document.write(m + " x " + nb + " = " + nb * m + '</br>');
        //cette ligne permet d'afficher le resultat sur page web et de determiner la mise en forme de celui çi.

    }
}
TableMultiplication(nb);
// Pour que la fonction s'applique ,on l'appelle de cette façon.