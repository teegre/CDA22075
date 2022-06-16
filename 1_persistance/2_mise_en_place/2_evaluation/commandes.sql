DROP DATABASE IF EXISTS commandes;

CREATE DATABASE commandes;

USE commandes;

CREATE TABLE client (
  cli_num INT NOT NULL AUTO_INCREMENT,
  cli_nom VARCHAR(50) NOT NULL,
  cli_adresse VARCHAR(50) NOT NULL,
  cli_tel VARCHAR(12) NOT NULL,
  PRIMARY KEY (cli_num)
);

CREATE UNIQUE INDEX nom_client ON client(cli_nom);

CREATE TABLE produit (
  pro_num INT NOT NULL AUTO_INCREMENT,
  pro_libelle VARCHAR(50) NOT NULL,
  pro_description VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (pro_num)
);

CREATE TABLE commande (
  com_num INT NOT NULL AUTO_INCREMENT,
  cli_num INT NOT NULL,
  com_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  com_obs VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (com_num),
  FOREIGN KEY (cli_num) REFERENCES client(cli_num)
);

CREATE TABLE detail (
  com_num INT NOT NULL,
  pro_num INT NOT NULL,
  est_qte INT NOT NULL,
  PRIMARY KEY (com_num, pro_num),
  FOREIGN KEY (com_num) REFERENCES commande(com_num),
  FOREIGN KEY (pro_num) REFERENCES produit(pro_num)
);

insert into client values (null, 'Henri Quatre', 'Versailles', '+33678901234');
insert into client values (null, 'Louis Seize', 'Versailles', '+33123456789');
insert into produit values (null, 'Pomme', "Des pommes vendues à l'unité");
insert into produit values (null, 'Poire', "Des poires vendues à l'unité");
insert into produit values (null, 'Scoubidou', "Des scoubidous vendus au mètre (couleurs variées)");
insert into commande (cli_num, com_obs) values (1, 'Ouaip');
insert into commande (cli_num, com_obs) values (2, 'Urgent');
insert into detail values (1, 1, 1);
insert into detail values (2, 2, 12);
insert into detail values (2, 3, 50);
