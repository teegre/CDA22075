USE papyrus;

CREATE OR REPLACE TABLE articles_a_commander (
  codart CHAR(4) NOT NULL,
  date TIMESTAMP,
  qte INT UNSIGNED,
  FOREIGN KEY (codart) REFERENCES produit(codart)
);

DELIMITER //

CREATE OR REPLACE TRIGGER commander AFTER UPDATE ON produit
FOR EACH ROW
BEGIN
  DECLARE new_qty INT;
  IF NEW.stkphy < NEW.stkale THEN
    SET new_qty = (
      SELECT sum(qte) FROM articles_a_commander
      WHERE codart = NEW.codart
    );
    IF ISNULL(new_qty) THEN
      SET new_qty = 0;
    END IF;
    SET new_qty = (NEW.stkale-NEW.stkphy-new_qty);
    INSERT INTO articles_a_commander (codart, qte) VALUES (NEW.codart, new_qty);
  END IF;

END //

DELIMITER ;
