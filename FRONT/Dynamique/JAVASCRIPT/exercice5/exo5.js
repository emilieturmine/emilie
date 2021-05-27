var nb1 = (prompt("entrez un nombre"))
var nb2 = (prompt("entrez un multiplicateur"))
var resultat = 0
var resultat2

function image() {
    var img = document.createElement();
    document.write(img); //trouver le bon attribut pour image
}

function cube() {
    var resultat;
    resultat = nb1 * nb1 * nb1;
    document.write("le cube de " + nb1 + " est de : " + resultat + '<br/>');

}



function produit() {
    var resultat2;
    resultat2 = nb1 * nb2;
    document.write(nb1 + " x " + nb2 + " est egale à : " + resultat2);
}
image(papillon.jpg);
cube();
produit();