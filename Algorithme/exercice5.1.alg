<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;pour rappel, vous devez entrer un chiffre compris entre 1 et 3&quot;" texte="1..2...3...une boucle"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2defaut="" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" epaisseurPoint="2" epaisseurLigne="2" nbDecimales="8" totalBoucles="5000000" maxBoucle="500000" arrondiAuto="vrai"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nb EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="nb PREND_LA_VALEUR 4" code="5#nb#4#pasliste"/>
        <item algoitem="AFFICHER &quot;entrez un chiffre entre 1 et 3&quot;" code="4#entrez un chiffre entre 1 et 3#0"/>
        <item algoitem="TANT_QUE (nb&lt;1 OU nb>3) FAIRE" code="15#nb&lt;1 OU nb>3">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="LIRE nb" code="2#nb#pasliste"/>
            <item algoitem="AFFICHER &quot;pour rappel, vous devez entrer un chiffre compris entre 1 et 3&quot;" code="4#pour rappel, vous devez entrer un chiffre compris entre 1 et 3#1"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
