# Création de vues : base Papyrus

## v_GlobalCde :

A partir de la table `ligcom`, afficher par code produit la somme des quantités commandées et le prix total correspondant :
on nommera la colonne correspondant à la somme des quantités commandées, `QteTot` et le prix total, `PrixTot`.

```sql
CREATE VIEW v_GlobalCde AS
SELECT codart, libart, sum(qtecde) AS QteTot, sum(qtecde*priuni) AS PrixTot FROM ligcom
JOIN produit ON ligcom.codart = produit.codart;
```

## v_VentesI100 :

Afficher les ventes dont le code priduit est `I100` (affichage de toutes les colonnes de la table `Vente`).

```sql
CREATE VIEW v_VentesI100 AS
SELECT vente.* FROM vente
JOIN produit ON vente.codart = produit.codart
WHERE vente.codart = 'I100';
```

## v_VentedI100Grobrigan :

Afficher toutes les ventes concernant le produit `I100` et le fournisseur `00120`, à partir de la vue précédente.

```sql
CREATE VIEW v_VentesI100Grobrigan AS
SELECT * FROM v_VentesI100
WHERE numfou = '00120';
```
