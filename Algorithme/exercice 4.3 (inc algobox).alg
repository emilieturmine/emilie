<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="LIRE s" texte="prevenir l'avenir à la seconde"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" totalAffichages="1000" maxBoucle="500000" arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#h" algoitem="h EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#m" algoitem="m EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#s" algoitem="s EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#entrez les heures ,minutes ,secondes svp#0" algoitem="AFFICHER &quot;entrez les heures ,minutes ,secondes svp&quot;"/>
        <item code="2#h#pasliste" algoitem="LIRE h"/>
        <item code="2#m#pasliste" algoitem="LIRE m"/>
        <item code="2#s#pasliste" algoitem="LIRE s"/>
        <item code="5#s#s+1#pasliste" algoitem="s PREND_LA_VALEUR s+1"/>
        <item code="6#s==60" algoitem="SI (s==60) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#s#0#pasliste" algoitem="s PREND_LA_VALEUR 0"/>
            <item code="5#m#m+1#pasliste" algoitem="m PREND_LA_VALEUR m+1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#m==60" algoitem="SI (m==60) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#m#0#pasliste" algoitem="m PREND_LA_VALEUR 0"/>
            <item code="5#h#h+1#pasliste" algoitem="h PREND_LA_VALEUR h+1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#h==24 OU h==25" algoitem="SI (h==24 OU h==25) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#h#0#pasliste" algoitem="h PREND_LA_VALEUR 0"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="4#Dans une seconde il sera :#1" algoitem="AFFICHER &quot;Dans une seconde il sera :&quot;"/>
        <item code="3#h#0#pasliste" algoitem="AFFICHER h"/>
        <item code="4#heure(s),#0" algoitem="AFFICHER &quot;heure(s),&quot;"/>
        <item code="3#m#0#pasliste" algoitem="AFFICHER m"/>
        <item code="4#minute(s) et #0" algoitem="AFFICHER &quot;minute(s) et &quot;"/>
        <item code="3#s#0#pasliste" algoitem="AFFICHER s"/>
        <item code="4#seconde(s)#0" algoitem="AFFICHER &quot;seconde(s)&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
