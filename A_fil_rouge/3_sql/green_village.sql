DROP DATABASE IF EXISTS greenvillage;
CREATE DATABASE greenvillage;
USE greenvillage;

CREATE TABLE fournisseur(
  fournisseur_id INT AUTO_INCREMENT,
  fournisseur_nom VARCHAR(50)  NOT NULL,
  fournisseur_adresse VARCHAR(100)  NOT NULL,
  fournisseur_cp VARCHAR(10)  NOT NULL,
  fournisseur_ville VARCHAR(50)  NOT NULL,
  fournisseur_pays VARCHAR(50) ,
  fournisseur_contact VARCHAR(50) ,
  fournisseur_tel VARCHAR(12) ,
  fournisseur_email VARCHAR(50) ,
  PRIMARY KEY(fournisseur_id)
);

CREATE TABLE commande(
  commande_id INT AUTO_INCREMENT,
  commande_validee BOOLEAN,
  commande_date DATE,
  commande_date_paiement DATE,
  commande_date_envoi DATE,
  commande_partielle BOOLEAN,
  commande_adresse_facturation VARCHAR(255) ,
  commande_adresse_livraison VARCHAR(255) ,
  commande_pays_livraison VARCHAR(50) ,
  commande_remise DECIMAL(5,2)  ,
  PRIMARY KEY(commande_id)
);

CREATE TABLE rubrique(
  rubrique_id INT AUTO_INCREMENT,
  rubrique_nom VARCHAR(50)  NOT NULL,
  rubrique_parent_id INT DEFAULT NULL,
  PRIMARY KEY(rubrique_id),
  FOREIGN KEY(rubrique_parent_id) REFERENCES rubrique(rubrique_id)
);

CREATE TABLE service(
  service_id INT AUTO_INCREMENT,
  service_nom VARCHAR(50)  NOT NULL,
  PRIMARY KEY(service_id)
);

CREATE TABLE bl(
  bl_id VARCHAR(50) ,
  bl_date DATE,
  bl_commande_id INT NOT NULL,
  PRIMARY KEY(bl_id),
  FOREIGN KEY(bl_commande_id) REFERENCES commande(commande_id)
);

CREATE TABLE facture(
  facture_id INT AUTO_INCREMENT,
  facture_date VARCHAR(50) ,
  facture_commande_id INT NOT NULL,
  PRIMARY KEY(facture_id),
  FOREIGN KEY(facture_commande_id) REFERENCES commande(commande_id)
);

CREATE TABLE produit(
  produit_id INT AUTO_INCREMENT,
  produit_ref_fournisseur VARCHAR(15) ,
  produit_lib VARCHAR(50)  NOT NULL,
  produit_desc VARCHAR(1000)  NOT NULL,
  produit_prix_ht DECIMAL(5,2)   NOT NULL,
  produit_photo VARCHAR(255)  NOT NULL,
  produit_stock INT NOT NULL,
  produit_rubrique_id INT NOT NULL,
  PRIMARY KEY(produit_id),
  FOREIGN KEY(produit_rubrique_id) REFERENCES rubrique(rubrique_id)
);

CREATE TABLE employe(
  employe_id INT AUTO_INCREMENT,
  employe_nom VARCHAR(50)  NOT NULL,
  employe_prenom VARCHAR(50)  NOT NULL,
  service_id INT,
  PRIMARY KEY(employe_id),
  FOREIGN KEY(service_id) REFERENCES service(service_id)
);

CREATE TABLE client(
  client_id INT AUTO_INCREMENT,
  client_ref VARCHAR(10)  NOT NULL,
  client_nom VARCHAR(50)  NOT NULL,
  client_prenom VARCHAR(50) ,
  client_adresse VARCHAR(100)  NOT NULL,
  client_cp VARCHAR(10) ,
  client_ville VARCHAR(50) ,
  client_pays VARCHAR(50)  NOT NULL,
  client_email VARCHAR(50) ,
  client_telephone VARCHAR(12) ,
  client_coeff DECIMAL(2,2)  ,
  client_particulier BOOLEAN,
  client_employe_id INT,
  PRIMARY KEY(client_id),
  UNIQUE(client_ref),
  FOREIGN KEY(client_employe_id) REFERENCES employe(employe_id)
);

CREATE TABLE fournisseur_produit(
  fournisseur_produit_produit_id INT,
  fournisseur_produit_fournisseur_id INT,
  PRIMARY KEY(fournisseur_produit_produit_id, fournisseur_produit_fournisseur_id),
  FOREIGN KEY(fournisseur_produit_produit_id) REFERENCES produit(produit_id),
  FOREIGN KEY(fournisseur_produit_fournisseur_id) REFERENCES fournisseur(fournisseur_id)
);

CREATE TABLE client_commande(
  client_commande_client_id INT,
  client_commande_commmande_id INT,
  PRIMARY KEY(client_commande_client_id, client_commande_commmande_id),
  FOREIGN KEY(client_commande_client_id) REFERENCES client(client_id),
  FOREIGN KEY(client_commande_commmande_id) REFERENCES commande(commande_id)
);

CREATE TABLE detail_commande(
  detail_commande_commande_id INT,
  detail_commande_produit_id INT,
  detail_commande_quantite INT,
  detail_commande_quantite_livree INT,
  detail_commande_prix_unitaire DECIMAL(5,2)  ,
  detail_commande_remise DECIMAL(5,2)  ,
  detail_commande_total DECIMAL(5,2)  ,
  PRIMARY KEY(detail_commande_commande_id, detail_commande_produit_id),
  FOREIGN KEY(detail_commande_commande_id) REFERENCES commande(commande_id),
  FOREIGN KEY(detail_commande_produit_id) REFERENCES produit(produit_id)
);
