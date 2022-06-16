# Utilisateurs et droits

## Création des utilisateurs *util1*, *util2* et *util3*

```sql
CREATE USER 'util1'@'localhost';
CREATE USER 'util2'@'localhost';
CREATE USER 'util3'@'localhost';
```

## Affectation des droits

```sql
-- util1 a tous les droits.
GRANT ALL PRIVILEGES ON papyrus.* TO 'util1'@'localhost';

-- util2 ne peut que consulter les informations dans la base de données.
GRANT SELECT ON papyrus.* TO 'util2'@'localhost';

-- util3 ne peut qu'afficher les informations de la table fournis.
GRANT SELECT ON papyrus.fournis TO 'util3'@'localhost';
```
