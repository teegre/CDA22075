USE northwind;

DELIMITER //
CREATE OR REPLACE FUNCTION meme_pays(
  IN id_commande INT, 
  IN id_produit  INT
) RETURNS BOOLEAN
BEGIN
  DECLARE pays_livraison VARCHAR(15);
  DECLARE pays_fournisseur VARCHAR(15);
  SET pays_livraison = (
    SELECT ShipCountry
    FROM orders
    WHERE OrderID = id_commande
  );
  SET pays_fournisseur = (
    SELECT Country
    FROM suppliers
    JOIN products ON suppliers.SupplierID = products.SupplierID
    WHERE ProductID = id_produit
  );
  RETURN LOWER(pays_livraison) = LOWER(pays_fournisseur);
END //
DELIMITER ;
