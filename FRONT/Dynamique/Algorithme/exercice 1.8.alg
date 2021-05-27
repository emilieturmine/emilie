<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER C"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" epaisseurPoint="2" arrondiAuto="vrai" nbDecimales="8" totalBoucles="5000000" maxBoucle="500000" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#A" algoitem="A EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#B" algoitem="B EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#C" algoitem="C EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#A#&quot;423&quot;#pasliste" algoitem="A PREND_LA_VALEUR &quot;423&quot;"/>
        <item code="5#B#&quot;12&quot;#pasliste" algoitem="B PREND_LA_VALEUR &quot;12&quot;"/>
        <item code="5#C#A+B#pasliste" algoitem="C PREND_LA_VALEUR A+B"/>
        <item code="4#LA VALEUR DE A EST:#0" algoitem="AFFICHER &quot;LA VALEUR DE A EST:&quot;"/>
        <item code="3#A#1#pasliste" algoitem="AFFICHER A"/>
        <item code="4#AFFICHER LA VALEUR DE B:#0" algoitem="AFFICHER &quot;AFFICHER LA VALEUR DE B:&quot;"/>
        <item code="3#B#1#pasliste" algoitem="AFFICHER B"/>
        <item code="4#AFFICHER LA VALEUR DE C :#0" algoitem="AFFICHER &quot;AFFICHER LA VALEUR DE C :&quot;"/>
        <item code="3#C#0#pasliste" algoitem="AFFICHER C"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
