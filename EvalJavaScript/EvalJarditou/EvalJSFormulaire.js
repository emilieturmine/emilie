//Création des différentes variables nécessaires au controle du formulaire.
//variables pour récupérer les informations. 
var Nom = document.getElementById("Nom").value;//valeur alphanumérique
var Prenom = document.getElementById("Prenom").value;
var Sexe = document.getElementById("Sexe").checked;// case a cocher
var DateNaissance = document.getElementById("DateNaissance").value;
var CP = document.getElementById("CP").value;
var Adresse = document.getElementById("Adresse").value;
var Ville = document.getElementById("Ville").value;
var Email = document.getElementById("Email").value;
var Sujet = document.getElementById("Sujet").value;
var Question = document.getElementById("Question").value;
var Accord = document.getElementById("Accord").checked;
var Formulaire = new Array();
//création d'un tableau pour les données récupérées
var ConfirmationEnvoi = true;
// pour confirmer l'envoi du formulaire
//variables pour les messages d'erreur
var ErreurNom = document.getElementById("ErreurNom");
var ErreurPrenom = document.getElementById("ErreurPrenom");
var ErreurSexe = document.getElementById("ErreurSexe");
var ErreurDateNaissance = document.getElementById("ErreurDateNaissance");
var ErreurCP = document.getElementById("ErreurCP");
var ErreurEmail = document.getElementById("ErreurEmail");
var ErreurSujet = document.getElementById("ErreurSujet");
var ErreurQuestion = document.getElementById("ErreurQuestion");
var ErreurAccord = document.getElementById("ErreurAccord");
// variable pour controler la saisie avec utilisation des expressions réguliere 
var NomValid = /^[A-Z][A-Za-z\é\è\ê\-]+$/;
var PrenomValid = /^[A-Z][A-Za-z\é\è\ê\-]+$/;
var EmailValid = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
//variable pour les évenements, créer un evenement lors du click sur un des boutons
var FormValid = document.getElementById("bouton_envoi");
FormValid.addEventListener("click", validation);
//validation du formulaire avec verification grace a la fonction "validation".
var reset = document.getElementById("reset");
reset.addEventListener("click", reinitialisation);
// efface ttes les données entrées dans le formulaire grace à la fonction "reinitialisation"
function reinitialisation()
//lorsque cette fonction est appelée on veut que le contenu des variables si dessous soit vides
{
  ErreurNom.textContent = "";
  ErreurPrenom.textContent = "";
  ErreurSexe.textContent = "";
  ErreurDateNaissance.textContent = "";
  ErreurCP.textContent = "";
  ErreurEmail.textContent = "";
  ErreurSujet.textContent = "";
  ErreurQuestion.textContent = "";
  ErreurAccord.textContent = "";
}
//Création d'une fonction pour lancer toutes les autres en une fois
function validation() {
  ConfirmationEnvoi = true;
  PrenomVerif();
  NomVerif();
  SexeVerif();
  DateNaissanceVerif();
  CPVerif();
  EmailVerif();
  SujetVerif();
  QuestionVerif();
  AccordVerif();
  EnvoiFormulaire();
  Envoi();
}


//Création des différentes fonctions nécessaires au controle du formulaire
//pour le nom
function NomVerif() {
  nom = document.getElementById("Nom").value;
  // récupération des informations entrée pour le nom
  if (nom == "") {
    // si rien est entrée pour la question nom alors le texte affecté à la variable ErreurNom apparait en rouge et le formulaire ne s'envoie pas
    ErreurNom.textContent = "Veuillez entrer votre Nom";
    ErreurNom.style.color = "red";
    ConfirmationEnvoi = false;
  } else {
    //sinon
    if (nomValid.test(nom) == false) {
      // si le nom entré n'est pas conforme alors le texte affecté à la variable ErreurNom apparait en rouge et le formulaire ne s'envoie pas
      ErreurNom.textContent = "La syntaxe utilisé n'est pas reconnu par le programme";
      ErreurNom.style.color = "red";
      ConfirmationEnvoi = false;
    } else {
      // si le nom entré est conforme rien ne s'affiche
      ErreurNom.textContent = "";
    }
  }
  //pour le prénom mm fonctionnement que pour nom mais les variables utilisés sont différentes
}
function PrenomVerif() {
  prenom = document.getElementById("Prenom").value;
  if (prenom == "") {
    ErreurPrenom.textContent = "Veuillez entrer votre prénom";
    ErreurPrenom.style.color = "red";
    ConfirmationEnvoi = false;
  } else {
    if (PrenomValid.test(Prenom) == false) {
      ErreurPrenom.textContent = "La syntaxe utilisé n'est pas reconnu par le programme";
      ErreurPrenom.style.color = "red";
      ConfirmationEnvoi = false;
    } else {
      ErreurPrenom.textContent = "";
    }
  }
}

//pour le sexe

function SexeVerif() {
  // récupération de la case coché pour le sexe
  var homme = document.getElementById("homme").checked;
  var femme = document.getElementById("femme").checked;
  var neutre = document.getElementById("neutre").checked;
  if (homme == true) {
    // si la case homme a été coché alors
    ErreurSexe.textContent = "";
    //aucun message ne s'affiche
    Sexe = "H";
    // la variable sexe prend la valeur" H "
  } else {
    // sinon
    if (femme == true) {
      // si femme est coché
      ErreurSexe.textContent = "";
      //aucun message ne s'affiche
      Sexe = "F";
      // la variable prend la valeur " F"
    } else {
      //sinon
      if (neutre == true) {
        // si la case neutre a été coché
        ErreurSexe.textContent = "";
        //aucun message ne s'affiche
        Sexe = "N";
        // la variable prend la valeur "N"
      } else {
        //si aucune case n'est coché.
        ErreurSexe.textContent = "indiquer votre sexe";
        // un message s'affiche en rouge pour demander a corriger l'erreur
        ErreurSexe.style.color = "red";
        ConfirmationEnvoi = false;
        // le formulaire ne s'envoie pas
      }
    }
  }
}
//pour la date
function DateNaissanceVerif() {
  // on récupere les informations 
  DateNaissance = document.getElementById("DateNaissance").value;
  var today = Date.now();
  //La méthode Date.now() renvoie le nombre de millisecondes écoulées depuis le 1er Janvier 1970 00:00:00 UTC.
  var dateEntree = new Date(DateNaissance);
  if (!isNaN(DateNaissance)) {// si l'information rentrée n'est pas nombre alors
    ErreurDateNaissance.textContent = "Veuillez entrer votre date de naissance";
    //affiche le message ci dessus en rouge et n'envoie pas le formulaire
    ErreurDateNaissance.style.color = "red";
    ConfirmationEnvoi = false;
  } else {
    if (dateEntree > today) {
      //si la date entrée est supérieure à la date d'aujourdui,affiche le texte ci dessous en rouge et le formulaire ne s'envoie pas
      ErreurDateNaissance.textContent = "vous venez du futur?";
      ErreurDateNaissance.style.color = "red";
      ConfirmationEnvoi = false;
    } else {
      //sinon aucun message ne s'affiche et la date entrée est récupérée
      ErreurDateNaissance.textContent = "";
      DateNaissance = document.getElementById("DateNaissance").value;
    }
  }
}

function CPVerif() {
  CP = document.getElementById("CP").value;
  var CPVerif = document.getElementById("CP").value.length;
  //on veut verifier le nombre de chiffre enté pour verifier la veracité du code postal entré
  if (CP == "") {
    ErreurCP.textContent = "Veuillez entrez votre code postal";
    ErreurCP.style.color = "red";
    ConfirmationEnvoi = false;
  } else {
    if (5 < CPVerif) {
      // si il y a plus de 5 chiffres
      ErreurCP.textContent = "Veuillez entrer un code postale valide ( 5 chiffres)";
      ErreurCP.style.color = "red";
      ConfirmationEnvoi = false;
    } else {
      if (5 > CPVerif) {
        //si il y a moins de 5 chiffres
        ErreurCP.textContent = "Veuillez entrer un code postale valide ( 5 chiffres)";
        ErreurCP.style.color = "red";
        ConfirmationEnvoi = false;
      } else {
        ErreurCP.textContent = "";
        CP = CP;
      }
    }
  }
}
//pour l'email pas de difference significative avec ce que l'on a deja vu
function EmailVerif() {
  Email = document.getElementById("Email").value;
  if (Email == "") {
    ErreurEmail.textContent = "Veuillez entrer votre adresse email";
    ErreurEmail.style.color = "red";
    ConfirmationEnvoi = false;
  } else {
    if (EmailValid.test(Email) == false) {
      // utilisation expression réguliere
      ErreurEmail.textContent = "La syntaxe utilisé n'est pas reconnu par le programme (exemple@domaine.fr)";
      ErreurEmail.style.color = "red";
      ConfirmationEnvoi = false;
    } else {
      ErreurEmail.textContent = "";
    }
  }
}
//pour le sujet pas de difference significative avec ce que l'on a deja vu
function SujetVerif() {
  Sujet = document.getElementById("Sujet").value;
  if (Sujet == "") {
    ErreurSujet.textContent =
      "Veuillez sélectionner un sujet ci-dessus dans le menu déroulant";
    ErreurSujet.style.color = "red";
    ConfirmationEnvoi = false;
  } else {
    ErreurSujet.textContent = "";
  }
}
//pour la question ,
function QuestionVerif() {
  Question = document.getElementById("Question").value;
  if (Question == "") {
    ErreurQuestion.textContent = "Veuillez écrire votre question";
    ErreurQuestion.style.color = "red";
    ConfirmationEnvoi = false;
  } else {
    if (Question.length < 50) {
      // si il y a moins de 50 caractere alors affichage message en rouge et pas d'envois
      ErreurQuestion.textContent = "Votre question doit faire au moins 50 caractere";
      ErreurQuestion.style.color = "red";
      ConfirmationEnvoi = false;
    } else {
      //sinonpas de message
      ErreurQuestion.textContent = "";
    }
  }
}
// voir question sexe
function AccordVerif() {
  Accord = document.getElementById("Accord").checked;
  if (Accord == false) {
    ErreurAccord.textContent = "Cochez la case pour accepter le traitement";
    ErreurAccord.style.color = "red";
    ConfirmationEnvoi = false;
  } else {
    ErreurAccord.textContent = "";
    Accord = "Accepté";
  }
}
//pour l'envoi formulaire
function EnvoiFormulaire() {
  // si pour toutes fonctions au dessus la variable confirmationnvoi est vrai alors les informations récoltés sont enregistrées dans le tableau
  if (ConfirmationEnvoi == true) {
    Formulaire = new Array(
      Nom,
      Prenom,
      Sexe,
      DateNaissance,
      CP,
      Adresse,
      Ville,
      Email,
      Sujet,
      Question,
      Accord
    );
    console.log(formulaire);// le tableau est visible dans la console
    window.alert(
      "Les infos sont récupérés sur Javascript " + Formulaire
    );// affiche une fenetre avec le texte ci dessus et les données recoltés

  }
}

function Envoi() {
  //si un des confirmation envoi est faux alors pas d'envoi du formulaire
  if (ConfirmationEnvoi == false) {
    return false;
  }
  return true;
  //sinon envoi du formulaire
}


