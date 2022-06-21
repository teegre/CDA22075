# Développer des composants accès - Evaluation

## Requêtes d'interrogation sur la base Northwind

### 1. Liste des clients français :

```sql
SELECT 
  CompanyName AS Société,
  ContactName AS Contact,
  ContactTitle AS Fonction,
  Phone AS Téléphone
FROM customers
WHERE Country = 'France';
```

### 2. Liste des produits vendus par Exotic Liquids :

```sql
SELECT ProductName AS Produit, UnitPrice AS Prix
FROM products
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
WHERE CompanyName = 'Exotic Liquids';
```

### 3. Nombre de produits mis à disposition des fournisseurs français :

*Tri par nombre de produits décroissant.*

```sql
SELECT CompanyName AS Fournisseur, COUNT(ProductID) AS Nbre_produits
FROM products
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
WHERE Country = 'France'
GROUP BY CompanyName
ORDER BY Nbre_produits DESC;
```

### 4. Liste des clients français ayant passé plus de 10 commandes :

```sql
SELECT CompanyName AS Client, COUNT(OrderID) AS Nbre_commandes
FROM orders
JOIN customers ON orders.CustomerID = customers.CustomerID
WHERE Country = 'France'
GROUP BY CompanyName
HAVING Nbre_commandes > 10;
```

### 5. Liste des clients dont le montant cumulé de toutes les commandes passées est supérieur à 30 000 € :

*Client, CA*

```sql
SELECT CompanyName AS Client, SUM((UnitPrice*Quantity)-Discount) AS ca
FROM `order details`
JOIN orders ON `order details`.OrderID = orders.OrderID
JOIN customers ON orders.CustomerID = customers.CustomerID
GROUP BY CompanyName
HAVING ca > 30000
ORDER BY ca DESC;
```

### 6. Liste des pays dans lesquels des produits par "Exotic Liquids" ont été livrés :

```sql
SELECT DISTINCT ShipCountry
FROM orders
JOIN `order details` ON orders.OrderID = `order details`.OrderID
JOIN products ON `order details`.ProductID = products.ProductID
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
WHERE CompanyName = 'Exotic Liquids'
ORDER BY ShipCountry;
```

### 7. Chiffre d'affaires global sur les ventes de 1997 :

*Montant Ventes 97.*

```sql
SELECT SUM((UnitPrice*Quantity)-Discount) AS `Montant ventes 97`
FROM `order details`
JOIN orders ON `order details`.OrderID = orders.OrderID
WHERE YEAR(OrderDate) = 1997;
```

### 8. Chiffre d'affaires détaillé par mois sur les ventes de 1997 :

*Mois 97, Montant Ventes.*

```sql
SELECT MONTH(OrderDate) AS `Mois 97`, SUM((UnitPrice*Quantity)-Discount) AS `Montant Ventes`
FROM `order details`
JOIN orders ON `order details`.OrderID = orders.OrderID
WHERE year(OrderDate) = 1997
GROUP BY `Mois 97`
ORDER BY `Mois 97`;
```

### 9. Date de la dernière commande du client "Du monde entier" ? :

*Date de dernière commande.*

```sql
SELECT MAX(OrderDate) AS `Date de dernière commande`
FROM orders
JOIN customers ON orders.CustomerID = customers.CustomerID
WHERE CompanyName = 'Du monde entier';
```

### 10. Délai moyen de livraison en jours ? :

```sql
SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS `Délai de livraison en jours`
FROM orders;
```

## Procédure stockées

### Date de dernière commande pour un client donné :

```sql
DELIMITER //
CREATE PROCEDURE date_derniere_commande(IN company_name VARCHAR(40))
BEGIN
  SELECT CompanyName, MAX(OrderDate) AS `Date de la dernière commande`
  FROM orders
  JOIN customers ON orders.CustomerID = customers.CustomerID
  WHERE LOWER(CompanyName) = LOWER(company_name);
END //
DELIMITER ;
```

### Délai moyen de livraison en jours :

```sql
DELIMITER //
CREATE PROCEDURE delai_livraison_moyen()
BEGIN
  SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS `Délai de livraison moyen (jours)`
  FROM orders;
END //
DELIMITER ;
```

## Mise en place d'une règle de gestion

*Pour chaque produit d'une commande vérifier que le client réside dans le même pays que le fournisseur du produit.*

En d'autres termes, lors de l'ajout d'un produit dans la table `order details`, vérifier que le pays de livraison (table `orders`),  
l'adresse de livraison pouvant différer de celle du client, est les même que celui du fournisseur du produit en question (table `suppliers`).  
Si ce n'est pas le cas, l'ajout n'est pas effectué et un message d'erreur est affiché.

Pour cela, l'utilisation d'une fonction stockée et d'un déclencheur semble appropriée.

La fonction retournerait un booléen : vrai si les pays sont identiques, sinon faux.  
Le déclencheur utiliserait cette fonction pour empêcher ou non l'ajout du produit concerné dans la table `order details`.

### Fonction stockée `meme_pays()` :

```sql
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
```

### Déclencheur `verif_pays` :

```sql
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
```
