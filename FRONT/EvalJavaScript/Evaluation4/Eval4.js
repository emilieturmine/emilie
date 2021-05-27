var PU = window.prompt("Entrez le Prix unitaire :");
//création d'une fenetre qui demanderas le prix unitaire.
var QTECOM = window.prompt("Entrez la Quantité commandée :");
// mm chose pour la quantité commandée.
var TOT = PU * QTECOM;
//On affecte à la variable totale le prix unitaire multiplié par la qté commandée.
var REM = 0;
// on affecte à la variable remise une valeur par défaut en l'occurrence 0.
REM.toFixed(2); 
// on indique au programme que le resultat de la variable doit etre arrondi à deux decimale (a revoir).
var PORT = 6;
// on affecte à la variable PORT une valeur par défaut en l'occurrence 6.
PORT.toFixed(2);
// on indique au programme que le resultat de la variable doit etre arrondi à deux decimale (a revoir).
if (TOT >= 100) {
    // si le total brut est supérieur ou egale à 100;
    if (TOT <= 200) {
        // et inferieur ou égale à 200 (&& doesn't work, à revoir)
        REM = TOT * 0.05;
        //alors on affecte à la variable remise :la valeur de TOT * par 5%
    } else {
        REM = TOT * 0.1;
        // sinon on lui affecte la valeur de TOT * par 10%
    }
}
if (TOT - REM > 500) {
    //si le le total de la commande (TOT) moins le montant de la remise (REM) est supérieur à 500
    var PORT = 0;
    // alors on affecte à la variable PORT la valeur 0
} else {
    var PORT = (TOT - REM) * 0.02;
    // sinon on lui affecte 2% du total apres remise
    if (PORT < 6) {
        // si le résultat est inferieur à 6 alors on lui affecte la valeur de 6 (frais de port min)
        PORT = 6;
    }
}


var PAP = TOT - REM + PORT;
//On affecte à la variable PAP ( prix à payer ) le resultat du total moins la remise plus les frais de port
console.log(PAP)
// pour que le resultat apparaisse dans la console
window.alert("Vous obtenez une remise de : " + REM + " , les frais de port sont de " + PORT + " euros; le montant total de la commande est donc de : " + PAP + "euros");
// fait apparaitre une fenetre indi quant le montant de la remise et des frais de port ainsi que le montant à regler avec la mise en forme souhaitée.