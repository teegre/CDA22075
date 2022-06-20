DROP DATABASE IF EXISTS papyrus;

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
  CHECK (posfou RLIKE '^[0-9]{5}$'),
  CHECK (satisf >-1 AND satisf < 11 )
);

CREATE TABLE entcom (
  numcom INT UNSIGNED NOT NULL AUTO_INCREMENT,
  obscom VARCHAR(50) DEFAULT NULL,
  datcom TIMESTAMP, -- MariaDB automatically assign DEFAULT CURRENT_TIMESTAMP and ON UPDATE CURRENT_TIMESTAMP to the column. <https://mariadb.com/kb/en/timestamp/>
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
