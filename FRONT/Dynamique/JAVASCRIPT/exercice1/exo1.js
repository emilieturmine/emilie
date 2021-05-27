var nom = window.prompt("entrez votre nom");
var prenom = window.prompt("entrez votre prénom");
if (window.confirm("Etes vous un homme?") == true) {
    document.write('<br/>' + "Bonjour Monsieur " + nom + " " + prenom + '<br/>' + "Bienvenue sur notre site web!");
}