DROP DATABASE IF EXISTS HOTEL;

CREATE DATABASE  HOTEL ;

USE  HOTEL ;

CREATE TABLE reservations(
    num_chambre INT ,
    num_client INT ,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    date_reservation DATE NOT NULL,
    montant_arrhes INT NOT NULL,
    prix_total INT NOT NULL,
    CONSTRAINT reservations PRIMARY KEY (num_chambre)
    
);

CREATE TABLE client(
    adresse_client VARCHAR(50) NOT NULL,
    nom_client VARCHAR(50) NOT NULL,
    prenom_client VARCHAR(50) NOT NULL,
    num_client INT ,
    CONSTRAINT client PRIMARY KEY (num_client)
   
);

CREATE TABLE chambre(
    capacite_chambre INT NOT NULL,
    degre_confort VARCHAR(50) NOT NULL,
    exposition VARCHAR (50) NOT NULL,
    type_chambre VARCHAR(50) NOT NULL,
    num_chambre INT UNIQUE,
    num_hotel INT NOT NULL,
    CONSTRAINT chambre PRIMARY KEY (num_chambre)
    
);

CREATE TABLE hotel(
    capacite_hotel INT(50) NOT NULL,
    categorie_hotel INT(50) NOT NULL,
    nom_hotel VARCHAR(50) NOT NULL,
    adresse_hotel VARCHAR(50) NOT NULL,
    num_hotel INT(50) NOT NULL,
    num_station INT,
    CONSTRAINT hotel PRIMARY KEY (num_hotel,num_station)
    
);

CREATE TABLE station (num_station INT(50) , nom_station INT(50) NOT NULL,
CONSTRAINT station PRIMARY KEY (num_station)
);

ALTER TABLE reservations
ADD CONSTRAINT fk_reservations_client
FOREIGN KEY (num_client)
REFERENCES client(num_client);

ALTER TABLE reservations
ADD CONSTRAINT fk_reservations_chambre
FOREIGN KEY (num_chambre)
REFERENCES chambre(num_chambre);

ALTER TABLE chambre
ADD CONSTRAINT fk_chambre_hotel
FOREIGN KEY (num_hotel)
REFERENCES hotel(num_hotel);

ALTER TABLE hotel
ADD CONSTRAINT fk_hotel_station
FOREIGN KEY(num_station)
REFERENCES station(num_station);


GRANT ALL PRIVILEGES ON HOTEL.* TO'util1'@'%'IDENTIFIED BY 'mdp1';
GRANT update ON HOTEL TO 'util2' IDENTIFIED BY 'mdp2';
GRANT select ON HOTEL.station TO 'util3'IDENTIFIED BY 'mdp3';
SHOW GRANT FOR 'util1'@'%';
SHOW GRANT FOR 'util2'@'%';
SHOW GRANT FOR 'util3'@'%';