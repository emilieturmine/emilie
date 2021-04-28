<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;les Trois noms n'ont pas été donnés dans l'ordre alphabétique&quot;" texte="Rangement par ordre alphabetique vrai/faux"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" maxBoucle="500000" totalAffichages="1000" epaisseurPoint="2" nbDecimales="8" totalBoucles="5000000" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#nom1" algoitem="nom1 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#nom2" algoitem="nom2 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#nom3" algoitem="nom3 EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#les informations sont à écrire en minuscule#1" algoitem="AFFICHER &quot;les informations sont à écrire en minuscule&quot;"/>
        <item code="4#donner un nom#1" algoitem="AFFICHER &quot;donner un nom&quot;"/>
        <item code="2#nom1#pasliste" algoitem="LIRE nom1"/>
        <item code="4#donner un autre nom#1" algoitem="AFFICHER &quot;donner un autre nom&quot;"/>
        <item code="2#nom2#pasliste" algoitem="LIRE nom2"/>
        <item code="4#donner encore un autre nom#1" algoitem="AFFICHER &quot;donner encore un autre nom&quot;"/>
        <item code="2#nom3#pasliste" algoitem="LIRE nom3"/>
        <item code="6#nom1&lt;nom2  ET nom2&lt;nom3" algoitem="SI (nom1&lt;nom2  ET nom2&lt;nom3) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#les trois noms ont été donnés dans l'ordre alphabetique#1" algoitem="AFFICHER &quot;les trois noms ont été donnés dans l'ordre alphabetique&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#les Trois noms n'ont pas été donnés dans l'ordre alphabétique#1" algoitem="AFFICHER &quot;les Trois noms n'ont pas été donnés dans l'ordre alphabétique&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
