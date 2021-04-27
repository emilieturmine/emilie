<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;la valeur de B est:&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2lignes="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param nbDecimales="8" totalAffichages="1000" maxBoucle="500000" epaisseurPoint="2" totalBoucles="5000000" epaisseurLigne="2" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#variable_A_en_entier" algoitem="variable_A_en_entier EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#variable_B_en_entier" algoitem="variable_B_en_entier EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#variable_A_en_entier#1#pasliste" algoitem="variable_A_en_entier PREND_LA_VALEUR 1"/>
        <item code="5#variable_B_en_entier#variable_A_en_entier+3#pasliste" algoitem="variable_B_en_entier PREND_LA_VALEUR variable_A_en_entier+3"/>
        <item code="5#variable_A_en_entier#3#pasliste" algoitem="variable_A_en_entier PREND_LA_VALEUR 3"/>
        <item code="4#la valeur de A est: #0" algoitem="AFFICHER &quot;la valeur de A est: &quot;"/>
        <item code="3#variable_A_en_entier#1#pasliste" algoitem="AFFICHER variable_A_en_entier"/>
        <item code="4#la valeur de B est:#0" algoitem="AFFICHER &quot;la valeur de B est:&quot;"/>
        <item code="3#variable_B_en_entier#1#pasliste" algoitem="AFFICHER variable_B_en_entier"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
