# Création de la base Hotels

```sql
CREATE DATABASE hotels; 

USE hotels;

CREATE TABLE station (
	station_id INT NOT NULL AUTO_INCREMENT,
	station_nom VARCHAR(50) NOT NULL,
	station_altitude INT,
  PRIMARY KEY (station_id)
);

CREATE TABLE hotel (
	hotel_id INT AUTO_INCREMENT NOT NULL,
	hotel_sta_id INT NOT NULL,
	hotel_nom VARCHAR(50) NOT NULL,
	hotel_categorie INT NOT NULL,
	hotel_adresse VARCHAR(50) NOT NULL,
	hotel_ville VARCHAR(50) NOT NULL, 
  PRIMARY KEY (hotel_id),
	FOREIGN KEY (hotel_sta_id) REFERENCES station(station_id)
);

CREATE TABLE chambre (
	chambre_id INT NOT NULL AUTO_INCREMENT ,
	chambre_hot_id INT NOT NULL,
	chambre_numero INT NOT NULL,
	chambre_capacite INT NOT NULL,
	chambre_type INT NOT NULL,
  PRIMARY KEY (chambre_id),
	FOREIGN KEY (chambre_hot_id) REFERENCES hotel(hotel_id)
);

CREATE TABLE client (
	client_id INT NOT NULL AUTO_INCREMENT ,
	client_nom VARCHAR(50),
	client_prenom VARCHAR(50),
	client_adresse VARCHAR(50),
	client_ville VARCHAR(50),
	PRIMARY KEY (client_id)
);

CREATE TABLE reservation (
	reservation_id INT NOT NULL AUTO_INCREMENT,
	reservation_cha_id INT NOT NULL ,
	reservation_cli_id INT NOT NULL ,
	reservation_date DATETIME NOT NULL,
	reservation_date_debut DATETIME NOT NULL,
	reservation_date_fin DATETIME NOT NULL,
	reservation_prix DECIMAL(6,2) NOT NULL,
	reservation_arrhes DECIMAL(6,2),
  PRIMARY KEY (reservation_id),
	FOREIGN KEY (reservation_cha_id) REFERENCES chambre(chambre_id),
	FOREIGN KEY (reservation_cli_id) REFERENCES client(client_id)
);
```
