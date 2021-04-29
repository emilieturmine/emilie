<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="LIRE sexe" texte="Les impots zorglubien"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" arrondiAuto="vrai" epaisseurLigne="2" maxBoucle="500000" epaisseurPoint="2" totalBoucles="5000000" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="age EST_DU_TYPE NOMBRE" code="1#NOMBRE#age"/>
        <item algoitem="sexe EST_DU_TYPE NOMBRE" code="1#NOMBRE#sexe"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;entrez votre âge svp&quot;" code="4#entrez votre âge svp#0"/>
        <item algoitem="LIRE age" code="2#age#pasliste"/>
        <item algoitem="AFFICHER &quot;indiquez votre sexe ( 1 pour homme; 2 pour femme)&quot;" code="4#indiquez votre sexe ( 1 pour homme; 2 pour femme)#0"/>
        <item algoitem="LIRE sexe" code="2#sexe#pasliste"/>
        <item algoitem="SI (sexe>2) ALORS" code="6#sexe>2">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;les donnees sont invalide pour rappel entrez 1 si vous un homme et 2 si vous êtes une femme&quot;" code="4#les donnees sont invalide pour rappel entrez 1 si vous un homme et 2 si vous êtes une femme#1"/>
            <item algoitem="LIRE sexe" code="2#sexe#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (sexe==1 ET age>=20) ALORS" code="6#sexe==1 ET age>=20">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Vous êtes imposable&quot;" code="4#Vous êtes imposable#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (sexe=2 ET age>18 ET age&lt;35) ALORS" code="6#sexe=2 ET age>18 ET age&lt;35">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Vous êtes imposable&quot;" code="4#Vous êtes imposable#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;Vous n'êtes pas imposable&quot;" code="4#Vous n'êtes pas imposable#0"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="" code="103#commentaire"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
