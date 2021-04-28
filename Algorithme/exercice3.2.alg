<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;le produit de n1 et n2 est négatif&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" maxBoucle="500000" totalAffichages="1000" epaisseurPoint="2" nbDecimales="8" totalBoucles="5000000" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#n1" algoitem="n1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n2" algoitem="n2 EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#donner une valeur à n1#1" algoitem="AFFICHER &quot;donner une valeur à n1&quot;"/>
        <item code="2#n1#pasliste" algoitem="LIRE n1"/>
        <item code="4#donner une valeur à n2#1" algoitem="AFFICHER &quot;donner une valeur à n2&quot;"/>
        <item code="2#n2#pasliste" algoitem="LIRE n2"/>
        <item code="6#n1>0 ET n2>0" algoitem="SI (n1>0 ET n2>0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#le produit de n1 et n2 est positif#1" algoitem="AFFICHER &quot;le produit de n1 et n2 est positif&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#le produit de n1 et n2 est négatif#1" algoitem="AFFICHER &quot;le produit de n1 et n2 est négatif&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
