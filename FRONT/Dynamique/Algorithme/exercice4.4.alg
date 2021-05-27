<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER nb" texte="facture total photographie"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" totalAffichages="1000" maxBoucle="500000" arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#entrez le nombre de photocopies effectués svp#0" algoitem="AFFICHER &quot;entrez le nombre de photocopies effectués svp&quot;"/>
        <item code="2#nb#pasliste" algoitem="LIRE nb"/>
        <item code="6#nb&lt;10" algoitem="SI (nb&lt;10) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#nb#nb*0.10#pasliste" algoitem="nb PREND_LA_VALEUR nb*0.10"/>
            <item code="4#Cela vous feras #0" algoitem="AFFICHER &quot;Cela vous feras &quot;"/>
            <item code="3#nb#0#pasliste" algoitem="AFFICHER nb"/>
            <item code="4#euros.#1" algoitem="AFFICHER &quot;euros.&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#nb&lt;20" algoitem="SI (nb&lt;20) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#nb#nb*0.09#pasliste" algoitem="nb PREND_LA_VALEUR nb*0.09"/>
                    <item code="4#cela vous feras #0" algoitem="AFFICHER &quot;cela vous feras &quot;"/>
                    <item code="3#nb#0#pasliste" algoitem="AFFICHER nb"/>
                    <item code="4#euros#0" algoitem="AFFICHER &quot;euros&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="5#nb#nb*0.08#pasliste" algoitem="nb PREND_LA_VALEUR nb*0.08"/>
                        <item code="4#cela vous feras #0" algoitem="AFFICHER &quot;cela vous feras &quot;"/>
                        <item code="3#nb#0#pasliste" algoitem="AFFICHER nb"/>
                        <item code="4#euros#0" algoitem="AFFICHER &quot;euros&quot;"/>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
