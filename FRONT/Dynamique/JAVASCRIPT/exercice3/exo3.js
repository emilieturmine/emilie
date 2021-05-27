//exercice 1-Parité

var nb = window.prompt("entrez un nombre");
var a;
a = nb % 2;
if (a == 0) {
    document.write = ("c'est un nombre pair");
} else {
    document.write = ("c'est un nombre impair");
}

// exercice 2- Age

var naissance = window.prompt("entrez votre date de naissance");
var année = 2021;
var age;
age = année - naissance;
if (age < 18) { document.write = ("vous êtes mineur") } else { document.write = ("vous etes majeur"); }

//exercice3: Calculette

var nb1 = Number(prompt("entrez un nombre"));
var nb2 = Number(prompt("entrez un autre nombre"));
var op = prompt('entrez Opérateur');

if (nb2 == 0 && op == '/') {
    alert("division par 0");
} else {
    switch (op) {
        case '/':
            alert(nb1 / nb2);
            break;
        case '+':
            alert(nb1 + nb2);
            break;
        case '*':
            alert(nb1 * nb2);
            break;
        case '-':
            alert(nb1 - nb2);
            break;
        default:
            alert("opérateur invalide");
    }
}