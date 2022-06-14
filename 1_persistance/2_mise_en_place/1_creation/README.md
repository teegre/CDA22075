# Créer une base mySQL

## Dictionnaire de données

| Donnée             | Nom         | Format  | Notes        |
| ------------------ | ----------- | ------- | ------------ |
| Numéro de personne | per_num     | counter | Clé primaire |
| Nom                | per_nom     | varchar |              |
| Prénom             | per_prenom  | varchar |              |
| Adresse            | per_adresse | varchar |              |
| Ville              | per_ville   | varchar |              |
| Numéro de groupe   | gro_num     | counter | Clé primaire |
| Libellé du groupe  | gro_libelle | varchar |              |

## Codage en SQL

```sql
CREATE DATABASE groupes;

USE groupes;

CREATE TABLE personne (
  per_num INT AUTO_INCREMENT,
  per_nom VARCHAR(50),
  per_prenom VARCHAR(50),
  per_adresse VARCHAR(100),
  per_ville VARCHAR(50),
  PRIMARY KEY (per_num)
);

CREATE TABLE groupe (
  gro_num INT AUTO_INCREMENT,
  gro_libelle VARCHAR(50),
  PRIMARY KEY(gro_num)
);

CREATE TABLE appartient (
  per_num INT,
  gro_num INT,
  PRIMARY KEY(per_num, gro_num),
  FOREIGN KEY(per_num) REFERENCES personne(per_num),
  FOREIGN KEY(gro_num) REFERENCES groupe(gro_num)
);
```




