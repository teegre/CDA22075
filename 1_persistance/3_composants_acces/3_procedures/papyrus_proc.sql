USE papyrus;

DELIMITER //

CREATE OR REPLACE PROCEDURE Lst_fournis()

BEGIN
  SELECT DISTINCT fournis.numfou, nomfou FROM entcom
  JOIN fournis ON entcom.numfou = fournis.numfou;
END //

DELIMITER ;


DELIMITER //

CREATE OR REPLACE PROCEDURE Lst_Commandes(IN obs VARCHAR(50))

BEGIN
  SELECT entcom.numcom, nomfou, libart, (qtecde*priuni) AS sous_total FROM entcom
  JOIN fournis ON entcom.numfou = fournis.numfou
  JOIN ligcom ON entcom.numcom = ligcom.numcom
  JOIN produit ON ligcom.codart = produit.codart
  WHERE obscom LIKE CONCAT('%', obs, '%');
END //

DELIMITER ;

DELIMITER //

CREATE OR REPLACE PROCEDURE CA_Fournisseur(IN founum VARCHAR(25), IN annee INT UNSIGNED)

BEGIN
  SELECT nomfou, SUM(qtecde * priuni * 1.20) as CA FROM fournis
  JOIN entcom ON fournis.numfou = entcom.numfou
  JOIN ligcom ON entcom.numcom = ligcom.numcom
  WHERE entcom.numfou = founum
  AND YEAR(datcom) = annee;
END //

DELIMITER ;
