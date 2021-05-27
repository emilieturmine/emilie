//Les prénoms a l'infinie

/*var firstname = '';
var count = 1;
do {
    firstname = window.prompt('Saisissez le prénom N° ' + count + '\n ou click sur Annuler pour arréter la saisie.');

    if (firstname != null && firstname != '') {
        console.log('Prénom N° ' + count + ': ' + firstname);
        count++;
    }

} while (firstname != null && firstname != '');*/

//Entier inferieur a N
/*var nb = parseInt(prompt("entrez un nombre"));
var liste = 0;
for (test = 1; test < nb; test++) {
    liste = liste + "," + test
}
alert(liste);*/

//moyenne

/*var nb = 1;
var moyenne = 0;
var somme = 0;
var nb_rep = 0;

while (nb != 0) {
    nbr = parseInt(window.prompt("Saisissez un nombre"));
    somme += nb;
    nb_rep++;
}
moyenne = somme / (nb_rep - 1);
alert("Somme : " + somme + ", Moyenne : " + moyenne);*/

//multiples

/*var X = parseInt(window.prompt('Saisissez un nombre :'));
        var N = parseInt(window.prompt('Saisissez le nombre de multiple :'));
        var total = 0;
       
        for (i = 0; i <= N; i++) {  
            total = i * X;
           }
           alert(X + ' x ' + (i - 1) + ' = ' + total);*/

//nombre de voyelles

var word = window.prompt('Saisir un mot :').toLowerCase();
var wordLength = word.length;
var count = 0;

for (i = 0; i < wordLength; i++) {
    switch (word[i]) {
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':
        case 'y':

            count++;
            break;
        default:
            ' ';
    }
}
alert('Nombre de voyelle dans le mot ' + word + ' : ' + count);