# Evaluation

## Création de la base de données Commandes

```sql
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
```

## Base de données Papyrus

### Création

```sql
CREATE DATABASE papyrus;

USE papyrus;

CREATE TABLE produit (
  codart CHAR(4) NOT NULL,
  libart VARCHAR(30) NOT NULL,
  stkale INT NOT NULL,
  stkphy INT NOT NULL,
  qteann INT NOT NULL,
  unimes CHAR(5) NOT NULL,
  PRIMARY KEY (codart)
);

CREATE TABLE fournis (
  numfou VARCHAR(25) NOT NULL,
  nomfou VARCHAR(25) NOT NULL,
  ruefou VARCHAR(50) NOT NULL,
  posfou CHAR(5) NOT NULL,
  vilfou VARCHAR(30) NOT NULL,
  confou VARCHAR(15) NOT NULL,
  satisf TINYINT(2) UNSIGNED,
  PRIMARY KEY (numfou),
  CHECK (satisf >-1 AND satisf < 11 )
);

CREATE TABLE entcom (
  numcom INT UNSIGNED NOT NULL AUTO_INCREMENT,
  obscom VARCHAR(50) DEFAULT NULL,
  datcom TIMESTAMP,
  numfou VARCHAR(25) DEFAULT NULL,
  PRIMARY KEY (numcom),
  INDEX (numfou),
  FOREIGN KEY (numfou) REFERENCES fournis(numfou)
);

CREATE TABLE ligcom (
  numcom INT UNSIGNED NOT NULL,
  numlig TINYINT(3) NOT NULL,
  codart CHAR(4) NOT NULL,
  qtecde INT UNSIGNED NOT NULL,
  priuni DECIMAL(9,2) NOT NULL,
  qteliv INT UNSIGNED DEFAULT NULL,
  derliv DATETIME NOT NULL,
  PRIMARY KEY (numcom, numlig),
  FOREIGN KEY (numcom) REFERENCES entcom(numcom),
  FOREIGN KEY (codart) REFERENCES produit(codart)
);

CREATE TABLE vente (
  codart CHAR(4) NOT NULL,
  numfou VARCHAR(25) NOT NULL,
  delliv SMALLINT NOT NULL,
  qte1 INT UNSIGNED NOT NULL,
  prix1 DECIMAL(9,2) NOT NULL,
  qte2 INT UNSIGNED DEFAULT NULL,
  prix2 DECIMAL(9,2) DEFAULT NULL,
  qte3 INT UNSIGNED DEFAULT NULL,
  prix3 DECIMAL(9,2) DEFAULT NULL,
  PRIMARY KEY (codart, numfou),
  FOREIGN KEY (codart) REFERENCES produit(codart),
  FOREIGN KEY (numfou) REFERENCES fournis(numfou)
);
```

### Création des utilisateurs

#### Matt est administrateur de la base de données :

```sql
CREATE USER 'matt'@'localhost' IDENTIFIED BY 'extremelycomplicatedpassword';
GRANT ALL PRIVILEGES ON papyrus.* TO 'matt'@'localhost'
```

#### Bianco ne peut que consulter les données :

```sql
CREATE USER 'bianco'@'localhost';
GRANT SELECT ON papyrus.* TO 'bianco'@'localhost';
```
#### Bernard gère les produits :

```sql
CREATE USER 'bernard'@'localhost';
GRANT SELECT INSERT UPDATE DELETE on papyrus.produit TO 'bernard'@'localhost';
```

### Importation des données de la table produit depuis le fichier *produit.csv*

#### Structure de la table produit :

```
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| codart | char(4)     | NO   | PRI | NULL    |       |
| libart | varchar(30) | NO   |     | NULL    |       |
| stkale | int(11)     | NO   |     | NULL    |       |
| stkphy | int(11)     | NO   |     | NULL    |       |
| qteann | int(11)     | NO   |     | NULL    |       |
| unimes | char(5)     | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
```
#### Importation des données :
```sql
LOAD DATA LOCAL INFILE 'produit.csv' INTO TABLE produit
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(codart,libart,stkale,stkphy,qteann,unimes);

```
