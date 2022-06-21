USE northwind;

-- Date de dernière commande pour un client donné.
DELIMITER //
CREATE OR REPLACE PROCEDURE date_derniere_commande(IN company_name VARCHAR(40))
BEGIN
  SELECT CompanyName, MAX(OrderDate) AS `Date de la denière commande`
  FROM orders
  JOIN customers ON orders.CustomerID = customers.CustomerID
  WHERE LOWER(CompanyName) = LOWER(company_name);
END //
DELIMITER ;

-- Délai moyen de livraison en jours.
DELIMITER //
CREATE PROCEDURE delai_livraison_moyen()
BEGIN
  SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS `Délai de livraison moyen (jours)`
  FROM orders;
END //
DELIMITER ;
