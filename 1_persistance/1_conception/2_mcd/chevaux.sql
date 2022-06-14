DROP DATABASE IF EXISTS chevaux;

CREATE DATABASE chevaux;

USE chevaux;

CREATE TABLE cheval(
   cheval_id INT AUTO_INCREMENT,
   cheval_numero_enregistrement VARCHAR(50)  NOT NULL,
   cheval_nom VARCHAR(100) ,
   cheval_naissance DATE NOT NULL,
   cheval_lieu_naissance VARCHAR(50)  NOT NULL,
   cheval_sexe CHAR(1)  NOT NULL,
   cheval_couleur VARCHAR(50)  NOT NULL,
   cheval_mere_id INT,
   PRIMARY KEY(cheval_id),
   UNIQUE(cheval_numero_enregistrement),
   FOREIGN KEY(cheval_mere_id) REFERENCES cheval(cheval_id)
);

CREATE TABLE race(
   race_id INT AUTO_INCREMENT,
   race_nom VARCHAR(100)  NOT NULL,
   PRIMARY KEY(race_id),
   UNIQUE(race_nom)
);

CREATE TABLE personne(
   personne_id INT AUTO_INCREMENT,
   personne_nom VARCHAR(50)  NOT NULL,
   personne_rue VARCHAR(100)  NOT NULL,
   personne_code_postal CHAR(5)  NOT NULL,
   personne_ville VARCHAR(100)  NOT NULL,
   PRIMARY KEY(personne_id)
);

CREATE TABLE veterinaire(
   ID INT AUTO_INCREMENT,
   veterinaire_nom VARCHAR(50)  NOT NULL,
   PRIMARY KEY(ID)
);

CREATE TABLE societe(
   societe_id INT AUTO_INCREMENT,
   societe_raison_sociale VARCHAR(100)  NOT NULL,
   PRIMARY KEY(societe_id)
);

CREATE TABLE proprietaire(
   proprietaire_id INT AUTO_INCREMENT,
   propretaire_date DATE NOT NULL,
   PRIMARY KEY(proprietaire_id)
);

CREATE TABLE cheval_race(
   cheval_id INT,
   race_id INT,
   PRIMARY KEY(cheval_id, race_id),
   FOREIGN KEY(cheval_id) REFERENCES cheval(cheval_id),
   FOREIGN KEY(race_id) REFERENCES race(race_id)
);

CREATE TABLE proprietaire_cheval(
   cheval_id INT,
   proprietaire_id INT,
   PRIMARY KEY(cheval_id, proprietaire_id),
   FOREIGN KEY(cheval_id) REFERENCES cheval(cheval_id),
   FOREIGN KEY(proprietaire_id) REFERENCES proprietaire(proprietaire_id)
);

CREATE TABLE entraineur_cheval(
   cheval_id INT,
   personne_id INT,
   entrainement_date DATE,
   PRIMARY KEY(cheval_id, personne_id),
   FOREIGN KEY(cheval_id) REFERENCES cheval(cheval_id),
   FOREIGN KEY(personne_id) REFERENCES personne(personne_id)
);

CREATE TABLE veterinaire_cheval(
   cheval_id INT,
   ID INT,
   date_soins DATE NOT NULL,
   PRIMARY KEY(cheval_id, ID),
   FOREIGN KEY(cheval_id) REFERENCES cheval(cheval_id),
   FOREIGN KEY(ID) REFERENCES veterinaire(ID)
);

CREATE TABLE personne_societe(
   personne_id INT,
   societe_id INT,
   PRIMARY KEY(personne_id, societe_id),
   FOREIGN KEY(personne_id) REFERENCES personne(personne_id),
   FOREIGN KEY(societe_id) REFERENCES societe(societe_id)
);

CREATE TABLE personne_proprietaire(
   personne_id INT,
   proprietaire_id INT,
   PRIMARY KEY(personne_id, proprietaire_id),
   FOREIGN KEY(personne_id) REFERENCES personne(personne_id),
   FOREIGN KEY(proprietaire_id) REFERENCES proprietaire(proprietaire_id)
);

CREATE TABLE societe_proprietaire(
   societe_id INT,
   proprietaire_id INT,
   PRIMARY KEY(societe_id, proprietaire_id),
   FOREIGN KEY(societe_id) REFERENCES societe(societe_id),
   FOREIGN KEY(proprietaire_id) REFERENCES proprietaire(proprietaire_id)
);

INSERT INTO cheval values (NULL, 'BL15RFN', 'Blanche', '1580-01-12', 'Reims', 'F', 'Noir', NULL);
INSERT INTO cheval values (NULL, 'PA16AMB', 'Paracelse', '1600-06-10', 'Angoulème', 'M', 'Blanc', 1);
INSERT INTO personne values (NULL, 'Henri de Bourbon', "Place d'Armes", '78000', 'Versailles');
INSERT INTO personne values (NULL, 'Bernardo', "Place d'Armes", '78000', 'Versailles');
INSERT INTO personne values (NULL, 'Stéphane de Meyer', 'Rue des Groseilliers', '28085', 'Chartres');
INSERT INTO personne values (NULL, 'Alphonse Dans Lemur', '12 rue Victor Hugo', '57631', 'Sarreguemines');
INSERT INTO personne values (NULL, 'Sandra Nicouverture', '27 rue de Rivoli', '75000', 'Paris');
INSERT INTO societe values (NULL, 'Société Générale');
INSERT INTO personne_societe values (3, 1);
INSERT INTO personne_societe values (4, 1);
INSERT INTO personne_societe values (5, 1);
INSERT INTO proprietaire values (NULL, '1600-08-12');
INSERT INTO proprietaire values (NULL, '2020-03-07');
INSERT INTO proprietaire_cheval values (2, 1);
INSERT INTO proprietaire_cheval values (1, 2);
INSERT INTO personne_proprietaire values (1, 1);
INSERT INTO societe_proprietaire values (1, 2);

SELECT cheval_nom AS cheval, personne_nom AS proprietaire FROM cheval
JOIN proprietaire_cheval ON cheval.cheval_id = proprietaire_cheval.cheval_id
JOIN proprietaire ON proprietaire_cheval.proprietaire_id = proprietaire.proprietaire_id
JOIN personne_proprietaire ON proprietaire.proprietaire_id = personne_proprietaire.proprietaire_id
JOIN personne ON personne_proprietaire.personne_id = personne.personne_id;

SELECT cheval_nom AS cheval, personne_nom AS proprietaire, societe_raison_sociale AS societe FROM cheval
JOIN proprietaire_cheval ON cheval.cheval_id = proprietaire_cheval.cheval_id
JOIN proprietaire ON proprietaire_cheval.proprietaire_id = proprietaire.proprietaire_id
JOIN societe_proprietaire ON proprietaire.proprietaire_id = societe_proprietaire.proprietaire_id
JOIN societe ON societe_proprietaire.societe_id = societe.societe_id
JOIN personne_societe ON societe.societe_id = personne_societe.societe_id
JOIN personne ON personne_societe.personne_id = personne.personne_id
