DROP DATABASE IF EXISTS `exo1`;
/*supprime la bdd exo1 si elle existe deja*/

CREATE DATABASE `exo1`; 

/*cree la bdd exo1 */
USE `exo1`;
/* utiliser la bdd exo1*/

CREATE TABLE `client` (
  `cli_num` int(11) NOT NULL,
  `cli_nom` varchar(50) NOT NULL,
  `cli_adresse` varchar(50) NOT NULL,
  `cli_tel` varchar(30) NOT NULL,
 CONSTRAINT client_PK PRIMARY KEY ('cli_num'),
  CREATE INDEX `cli_nom` ON 'client'
) ;
/*creation d'une table client qui comprendras 4 colonnes:
la premiere avec le numero client 'cli_num'(en chiffres, 11 maximum) ne peut pas être vide,
la deuxieme avec le nom du client'cli_nom' (en caractere,50 maximum)ne peut pas être vide,
La troisieme avec l'adresse du client 'cli_adressse'( en caractere ,50 max)ne peut pas etre vide,
La quatrieme avec le numero de telephone du client'cli_num'( en caractere ,30 max)ne peut pas etre vide
La cle primaire est la colonne 'cli_num',
creation d'un index sur le nom client dans la ta table client*/

CREATE TABLE `commande` (
  `com_num` int(11) NOT NULL,
  `cli_num` int(11) NOT NULL,
  `com_date` datetime NOT NULL, /* valeur sous forme de date*/
  `com_obs` varchar(50) NOT NULL,
  CONSTRAINT commande_PK PRIMARY KEY ('com_num'),
    
) ;

CREATE TABLE `est_compose` (
  `com_num` int(11) NOT NULL,
  `pro_num` int(11) NOT NULL,
  `est_qte` int(11) NOT NULL,
 
) ;

CREATE TABLE `produit` (
  `pro_num` int(11) NOT NULL,
  `pro_libelle` varchar(50) NOT NULL,
  `pro_description` varchar(50) NOT NULL,
 CONSTRAINT produit PRIMARY KEY ('pro_num'),
) ;

ALTER TABLE `commande`
/* modification de la table commande pour ajout d'une cle etrangere ayant pour refernce la table client et la colonne numero client*/
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`cli_num`) REFERENCES `client` (`cli_num`);

ALTER TABLE `est_compose`/* pareil que au dessus mais pour la table est compose*/
  ADD CONSTRAINT `est_compose_ibfk_1` FOREIGN KEY (`com_num`) REFERENCES `commande` (`com_num`),
  ADD CONSTRAINT `est_compose_ibfk_2` FOREIGN KEY (`pro_num`) REFERENCES `produit` (`pro_num`); 