DROP DATABASE IF EXISTS greenvillage;
CREATE DATABASE greenvillage;
USE greenvillage;

CREATE TABLE fournisseur(
  fournisseur_id INT AUTO_INCREMENT,
  fournisseur_raison_sociale VARCHAR(50) NOT NULL,
  fournisseur_adresse VARCHAR(100) NOT NULL,
  fournisseur_cp VARCHAR(10) NOT NULL,
  fournisseur_ville VARCHAR(50) NOT NULL,
  fournisseur_pays VARCHAR(50) NOT NULL, -- dans une table dédiée ?
  fournisseur_contact VARCHAR(50) NOT NULL,
  fournisseur_telephone VARCHAR(12) NOT NULL,
  fournisseur_email VARCHAR(50),
  PRIMARY KEY(fournisseur_id)
);

CREATE TABLE produit(
  produit_id INT AUTO_INCREMENT,
  produit_ref_fournisseur VARCHAR(15) NOT NULL,
  produit_libelle VARCHAR(50) NOT NULL,
  produit_description VARCHAR(1000),
  produit_prix_ht DECIMAL(5,2) NOT NULL
  produit_photo VARCHAR(255) NOT NULL,
  produit_stock INT NOT NULL,
  produit_rubrique_id INT NOT NULL,
  PRIMARY KEY (produit_id),
  FOREIGN KEY (produit_rubrique_id) REFERENCES rubrique(rubrique_id)
);

CREATE TABLE fournisseur_produit(
  fournisseur_produit_fournisseur_id INT NOT NULL,
  fournisseur_produit_produit_id INT NOT NULL,
  PRIMARY KEY (fournisseur_produit_fournisseur_id, fournisseur_produit_produit_id),
  FOREIGN KEY (fournisseur_produit_fournisseur_id) REFERENCES fournisseur(fournisseur_id),
  FOREIGN KEY (fournisseur_produit_produit_id) REFERENCES produit(produit_id)
);

CREATE TABLE rubrique(
  rubrique_id INT AUTO_INCREMENT,
  rubrique_nom VARCHAR(50) NOT NULL,
  rubrique_parent_id INT,
  PRIMARY KEY (rubrique_id),
  FOREIGN KEY (rubrique_parent_id) REFERENCES rubrique(rubrique_id)
);
