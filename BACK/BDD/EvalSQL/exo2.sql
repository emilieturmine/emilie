/* Liste des contacts francais.
 
 SELECT pour afficher les donnees souhaites,
 AS pour changer le nom des colonnes,
 FROM pour indiquer dans quel table chercher, 
 WHERE pour enoncer une condition particuliere */
SELECT
    CompanyName AS "Société",
    ContactName AS "contact",
    ContactTitle AS "Fonction",
    Phone AS "Téléphone"
FROM
    customers
WHERE
    Country = "France";

/* Produits vendus par le fournisseur " Exotic Liquids" cf au dessus */
SELECT
    ProductName AS "Produit",
    UnitPrice AS "Prix"
FROM
    products
WHERE
    SupplierID = "1";

/* Nombre de produits vendus par les fournisseurs Francais dans l'ordre décroissant:
 
 SELECT pour afficher les donnees souhaites,
 COUNT fonction d'agregation elle effectue un calcul sur un ensemble de valeurs et renvoient une valeur unique ,
 AS pour changer le nom des colonnes,
 FROM pour indiquer dans quel table chercher ,
 WHERE pour enoncer une condition particuliere,
 AND  pour enoncer une condition supplementaire,
 GROUP BY pour regrouper les informations recherchees en fonction d'une donnee en l'occurence par nom de compagnie,
 ORDER BY /DESC pour trier le resultat dans l'ordre decroissant*/
SELECT
    CompanyName AS "Fournisseur",
    COUNT(ProductID) AS "Nbre produits"
FROM
    products,
    suppliers
WHERE
    Country = "France"
    AND products.SupplierID = suppliers.SupplierID
GROUP BY
    CompanyName
ORDER BY
    COUNT(ProductID) DESC;

/* Liste des clients Francais ayant plus de 10 commandes :
 
 SELECT pour afficher les donnees souhaites,
 COUNT fonction d'agregation elle effectue un calcul sur un ensemble de valeurs et renvoient une valeur unique ,
 AS pour changer le nom des colonnes,
 FROM pour indiquer dans quel table chercher en mettant une virgule on indique qu'il faut chercher dans plusieurs table ,
 WHERE pour enoncer une condition particuliere,
 AND  pour enoncer une condition supplementaire,
 GROUP BY pour regrouper les informations recherchees en fonction d'une donnee en l'occurence par nom de compagnie,
 HAVING pour enoncer une condition dans le regroupement GROUP BY
 ORDER BY /ASC pour trier le resultat dans l'ordre croissant*/
SELECT
    CompanyName AS "Client",
    COUNT(OrderID) AS "Nbre produits"
FROM
    customers,
    orders
WHERE
    Country = "France"
    AND customers.CustomerID = orders.CustomerID
GROUP BY
    CompanyName
HAVING
    COUNT(OrderID) > 10
ORDER BY
    COUNT(OrderID) ASC;

/* Liste des clients ayants un CA > 30000:
 
 SUM Somme des valeurs des nombres d'une colonne de type numerique */
SELECT
    CompanyName AS "Client",
    SUM(UnitPrice * Quantity) AS "CA",
    Country AS "Pays"
FROM
    Customers,
    Orders,
    `order details`
WHERE
    orders.CustomerID = customers.CustomerID
    AND `order details`.OrderID = orders.OrderID
GROUP BY
    CompanyName,
    Country
HAVING
    CA > 30000
ORDER BY
    CA DESC;

/* Liste des pays dont les clients ont passe commande de produits fournis par "Exotic Liquids":
 */
SELECT
    customers.Country AS "Pays"
FROM
    suppliers,
    products,
    `order details`,
    orders,
    customers
WHERE
    suppliers.SupplierId = products.SupplierID
    AND products.ProductID = `order details`.ProductID
    AND `order details`.OrderID = orders.OrderID
    AND orders.CustomerID = customers.CustomerID
    AND suppliers.CompanyName = "Exotic Liquids"
GROUP BY
    customers.Country;

/* Montant des ventes de 1997: */
SELECT
    SUM(UnitPrice * Quantity) AS "Montant Ventes 97"
FROM
    `order details`,
    orders
WHERE
    `order details`.OrderID = orders.OrderID
    AND YEAR(OrderDate) = '1997';

/* Montant des ventes de 1997 mois par mois: */
SELECT
    Month(OrderDate),
    SUM(UnitPrice * Quantity) AS "Montant Ventes 97"
FROM
    `order details`,
    orders
WHERE
    `order details`.OrderID = orders.OrderID
    AND YEAR(OrderDate) = '1997'
GROUP BY
    Month(OrderDate);

/* Depuis quelle date le client "Du monde entier" n'a plus commandé?
 MAX Obtention de la valeur maximum d'une collection de valeurs
 */
SELECT
    MAX(OrderDate) AS "Date de dernière commande"
FROM
    customers,
    orders
WHERE
    CompanyName = "Du monde entier"
    AND customers.CustomerID = orders.CustomerID;

/* Quel est le delai moyen de livraison en jours?
 
 ROUND permet d'arrondir le resultat,
 AVG Calcul la moyenne
 DATEDIFF  Renvoie un entier spécifiant le nombre de jours compris entre date_début et date_fin
 */
SELECT
    ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS "Délai moyen de livraison en jours"
FROM
    orders;