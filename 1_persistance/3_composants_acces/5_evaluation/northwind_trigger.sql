USE northwind;

DELIMITER //
CREATE OR REPLACE TRIGGER verif_pays BEFORE INSERT ON `order details`
FOR EACH ROW
BEGIN
  IF NOT (SELECT meme_pays(NEW.OrderID, NEW.ProductID)) THEN
    SIGNAL SQLSTATE '45000' SET
    MESSAGE_TEXT = "Le pays de livraison n'est pas identique à celui du fournisseur !";
  END IF;
END //
DELIMITER ;
