-- 1
-- Liste des clients français.
SELECT 
  CompanyName AS Société,
  ContactName AS Contact,
  ContactTitle AS Fonction,
  Phone AS Téléphone
FROM customers
WHERE Country = 'France';

-- 2
-- Liste des produits vendus par Exotic Liquids.
SELECT ProductName AS Produit, UnitPrice AS Prix
FROM products
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
WHERE CompanyName = 'Exotic Liquids';

-- 3
-- Nombre de produits mis à disposition des fournisseurs français.
-- tri par nombre de produits décroissant.
SELECT CompanyName AS Fournisseur, COUNT(ProductID) AS Nbre_produits
FROM products
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
WHERE Country = 'France'
GROUP BY CompanyName
ORDER BY Nbre_produits DESC;

-- 4
-- Liste des clients français ayant passé plus de 10 commandes.
SELECT CompanyName AS Client, COUNT(OrderID) AS Nbre_commandes
FROM orders
JOIN customers ON orders.CustomerID = customers.CustomerID
WHERE Country = 'France'
GROUP BY CompanyName
HAVING Nbre_commandes > 10;

-- 5
-- Liste des clients dont le montant cumulé de toutes
-- les commandes passées est supérieur à 30 000 €
-- Client, CA, Pays
SELECT CompanyName AS Client, SUM((UnitPrice*Quantity)-Discount) AS CA
FROM `order details`
JOIN orders ON `order details`.OrderID = orders.OrderID
JOIN customers ON orders.CustomerID = customers.CustomerID
GROUP BY CompanyName
HAVING ca > 30000
ORDER BY ca DESC;

-- 6
-- Liste des pays dans lesquels des produits par "Exotic Liquids"
-- ont été livrés.
SELECT DISTINCT ShipCountry
FROM orders
JOIN `order details` ON orders.OrderID = `order details`.OrderID
JOIN products ON `order details`.ProductID = products.ProductID
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
WHERE CompanyName = 'Exotic Liquids'
ORDER BY ShipCountry;

-- 7
-- Chiffre d'affaires global sur les ventes de 1997.
-- Montant Ventes 97.
SELECT SUM((UnitPrice*Quantity)-Discount) AS `Montant ventes 97`
FROM `order details`
JOIN orders ON `order details`.OrderID = orders.OrderID
WHERE YEAR(OrderDate) = 1997;

-- 8
-- Chiffre d'affaires détaillé par mois sur les ventes de 1997
-- Mois 97, Montant Ventes.
SELECT MONTH(OrderDate) AS `Mois 97`, SUM((UnitPrice*Quantity)-Discount) AS `Montant Ventes`
FROM `order details`
JOIN orders ON `order details`.OrderID = orders.OrderID
WHERE year(OrderDate) = 1997
GROUP BY `Mois 97`
ORDER BY `Mois 97`;

-- 9
-- Date de la dernière commande du client "Du monde entier" ?
-- Date de dernière commande.
SELECT MAX(OrderDate) AS `Date de dernière commande`
FROM orders
JOIN customers ON orders.CustomerID = customers.CustomerID
WHERE CompanyName = 'Du monde entier';

-- 10
-- Délai moyen de livraison en jours ?
SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS `Délai de livraison en jours`
FROM orders;
