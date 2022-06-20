# Les déclencheurs

## Créer un déclencheur `AFTER UPDATE` : Base Papyrus

Créer une table `ARTICLE_A_COMMANDER` avec les colonnes :
*  CODART : code de l'article
*  DATE : date du jour (par défaut)
*  QTE : à calculer

```sql
CREATE TABLE articles_a_commander (
  codart CHAR(4) NOT NULL,
  date TIMESTAMP,
  qte INT,
  FOREIGN KEY (codart) REFERENCES produit(codart)
);
```

Créer un déclencheur UPDATE sur la table `produit` : une nouvelle ligne est insérée dans la table `articles_a_commander`  
lorsque le stock physique est inférieur au stock d'alerte.

```sql
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
```
