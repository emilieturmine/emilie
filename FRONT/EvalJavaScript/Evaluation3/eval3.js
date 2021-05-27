var tab = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane",];
// création d'une variable tableau et remplissage de celui çi on sépare chaque entrée dans le tableau par une ,
var prénom = window.prompt("Veuillez entrer un prénom");
//une fenetre va apparaitre pour que l'utilsateur entre un prénom ce sera la valeur de la variable prénom
var i = 0;
//on commence avec i=0 c'est a dire la variable i équivaut à la premiere donnée du tableau soit audrey
for (var i = 0; i <= 10; i++) {
    //pour i =0 en valeur initial jusque i =10 soit stéphane avec une incrémentation de 1 à chaque tour
    if (prénom == tab[i]) {
        // si le prénom est le même que celui dans le tableau à l'index i alors
        for (var i = i; i < tab.length; i++) {
            //pour que les index se décalent et qu'apparraissent le tableau en ligne avec un espace à la fin reprensentant le prénom trouvé.
            tab[i] = tab[i + 1];
            if (tab[i] == undefined) {
                tab[i] = "  ";
                console.log(tab);
                document.write("[" + tab + "'&nbsp'" + "]");
            }
        }
    } else {
        if (prénom != tab[i]) {
            // si prénom non présent dans le tableau initial affichés un message d'alerte
            window.alert("Le prénom entré n'est pas répertorié dans notre base de donnée");
        }
    }
}
