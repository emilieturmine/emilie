<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER prixtotalttc" texte="calculer le prix total toute taxe comprise"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" maxBoucle="500000" totalAffichages="1000" epaisseurPoint="2" nbDecimales="8" totalBoucles="5000000" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#prixhorstaxe" algoitem="prixhorstaxe EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nombrearticle" algoitem="nombrearticle EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#tauxtva" algoitem="tauxtva EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prixttc" algoitem="prixttc EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prixtotalttc" algoitem="prixtotalttc EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#prixhorstaxe#pasliste" algoitem="LIRE prixhorstaxe"/>
        <item code="2#nombrearticle#pasliste" algoitem="LIRE nombrearticle"/>
        <item code="2#tauxtva#pasliste" algoitem="LIRE tauxtva"/>
        <item code="5#prixttc#prixhorstaxe*tauxtva+prixhorstaxe#pasliste" algoitem="prixttc PREND_LA_VALEUR prixhorstaxe*tauxtva+prixhorstaxe"/>
        <item code="3#prixttc#0#pasliste" algoitem="AFFICHER prixttc"/>
        <item code="5#prixtotalttc#prixttc*nombrearticle#pasliste" algoitem="prixtotalttc PREND_LA_VALEUR prixttc*nombrearticle"/>
        <item code="3#prixtotalttc#0#pasliste" algoitem="AFFICHER prixtotalttc"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
