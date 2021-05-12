var MyTab = new Array();
//création d'une variable pour un tableau + création de celui-çi
var age = 0;
var jeune = 0;
var moyen = 0;
var mature = 0
var nb = 0;
// création des différentes variables dont on aura besoin pour l'exercice et affectation de valeur de départ pour chacune d'entre elles
while (age < 100) //création d'une boucle qui agiras jusqu'a ce que l'utilisateur rentre un age supérieur à 100.
{//actions réalisées tant que la boucle est active.
    age = window.prompt("veuillez entrer l'âge de la personne n° " + (nb + 1) + " : "); 
    //la variable age prend la valeur entrée par l'utilisateur dans la fenetre qui est apparue sur son écran, a chaque nouvelle fenetre la valeur de nb incrémente de 1 pour que l'utilisateur sache combien d'age il a rentré jusqu'a présent dans le prograamme.  
    MyTab[nb] = age;
    // Chaque age rentré est integré dans notre tableau avec l'index nb
    nb = nb + 1;
    //avant la fin de chaque boucle nb est incrémenté de 1
    
       if (age < 20) {
           

        jeune = jeune + 1;
        //création d'une premiere condition si l'age entrée par l'utilisateur est inferieur a 20 alors la variable jeune est incrémenter de 1.
    } else //si ce n'est pas le cas
    {
        
        if (age > 40) {

            mature = mature + 1;
            //création d'une deuxieme condition si l'âge entrée est supérieur à 40 ans alors la variable mature prend 1
        } else // si ce n'est toujours pas le cas c'est a dire si l'age entrée, est supérieur ou égal a 20 ans OU inferieur ou égal a 40 ans, alors la valeur de la variable moyen est celle qui est incrémenté de 1.
        {

            moyen = moyen + 1;
        }
    }
}
console.table(MyTab);
//affiche dans la console les données entrées sous forme de tableau
document.write("Il y a  " + jeune + " personnes de moins de 20 ans." + '<br/>');
document.write("Il y a  " + moyen + " personnes de moins de 40 ans." + '<br/>');
document.write("Il y a  " + mature + " personnes de plus de 40 ans.");
// Ces trois lignes indique dans la page web le nombres d'age (personnes) présentes dans chacune des catégories demandées.