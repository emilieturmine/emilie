<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="LIRE nb" texte="le juste prix.."/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2para="" F2lignes="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param nbDecimales="8" totalBoucles="5000000" epaisseurPoint="2" epaisseurLigne="2" totalAffichages="1000" arrondiAuto="vrai" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#trouver un des chiffres mystere?#0" algoitem="AFFICHER &quot;trouver un des chiffres mystere?&quot;"/>
        <item code="2#nb#pasliste" algoitem="LIRE nb"/>
        <item code="15#nb&lt;10 OU nb>20" algoitem="TANT_QUE (nb&lt;10 OU nb>20) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="6#nb&lt;10" algoitem="SI (nb&lt;10) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Plus grand!#0" algoitem="AFFICHER &quot;Plus grand!&quot;"/>
                <item code="2#nb#pasliste" algoitem="LIRE nb"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#nb>20" algoitem="SI (nb>20) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Plus petit!#0" algoitem="AFFICHER &quot;Plus petit!&quot;"/>
                <item code="2#nb#pasliste" algoitem="LIRE nb"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
