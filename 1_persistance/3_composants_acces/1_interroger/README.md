# Série d'exercices facultative

## Série 1.

```
REPRESENTATION (id, titre, lieu)
```

### Liste des représentations :

```sql
SELECT titre FROM REPRESENTATION;
```

### Liste des représentations ayant lieu à l'Opéra Bastille :

```sql
SELECT titre FROM REPRESENTATION
WHERE lieu = 'Opéra Bastille';
```

## Série 2.

```
ETUDIANT (id, nom, prenom)
MATIERE (id, libelle, coeff)
EVALUER (id_etudiant, id_matiere, date, note)
```

### Nombre total d'étudiants :

```sql
SELECT COUNT(*) AS nb_d_etudiants FROM ETUDIANT;
```

### Note la plus haute et note la plus basse :

```sql
SELECT min(note), max(note) FROM EVALUER;
```

### Moyenne de chaque étudiant dans chacune des matières :

```sql
SELECT nom, prenom, libelle, avg(note) as moyenne FROM EVALUER
JOIN MATIERE ON EVALUER.id_matiere = MATIERE.id
JOIN ETUDIANT ON EVALUER.id_etudiant = ETUDIANT.id
GROUP BY etudiant.id, matiere.id;
```

### Moyennes par matière :

```sql
SELECT libelle, avg(note) as moyenne FROM EVALUER
JOIN MATIERE ON EVALUER.id_matiere = MATIERE.id
GROUP BY matiere.id;
```

### Moyenne générale de chaque étudiant :

```sql
SELECT nom, prenom, sum(note*coeff)/sum(coeff) as moyenne FROM EVALUER
JOIN MATIERE ON EVALUER.id_matiere = MATIERE.id
JOIN ETUDIANT ON EVALUER.id_etudiant = ETUDIANT.id
GROUP BY etudiant.id
ORDER BY nom;
```

### Moyenne générale de la promotion :

```sql
SELECT sum(note*coeff)/sum(coeff) as moyenne_generale FROM EVALUER
JOIN MATIERE ON EVALUER.id_matiere = MATIERE.id;
```

### Etudiants ayant une moyenne supérieure ou égale à la moyenne générale de la promotion :

```sql
SELECT nom, prenom, sum(note*coeff)/sum(coeff) AS moyenne_generale FROM EVALUER
JOIN MATIERE ON EVALUER.id_matiere = MATIERE.id
JOIN ETUDIANT ON EVALUER.id_etudiant = ETUDIANT.id
GROUP BY ETUDIANT.id
HAVING moyenne_generale >= (
  SELECT sum(note*coeff)/sum(coeff) FROM EVALUER
  JOIN MATIERE ON EVALUER.id_matiere = MATIERE.id
)
ORDER BY moyenne_generale DESC;
```

## Série 3.

```
EQUIPE (id, nom_equipe, directeur_sportif)
COUREUR (id, nom_coureur, id_equipe, id_pays)
PAYS (id, nom_pays)
TYPE_ETAPE (id, libelle_type)
ETAPE (id, date_etape, ville_dep, ville_arr, nb_km, id_type_etape)
PARTICIPER (id_coureur, id_etape, temps_realise)
ATTRIBUER_BONIFICATION (id_etape, km, rang, nb_secondes, id_coureur)
```

### Composition de l'équipe Festina :

```sql
--- COUREUR.id, COUREUR.nom, PAYS.nom_pays

SELECT id, nom, nom_pays FROM COUREUR
JOIN EQUIPE on COUREUR.id_equipe = EQUIPE.id
JOIN PAYS on COUREUR.id_pays = PAYS.id
WHERE nom_equipe = 'Festina';
```

### Nombre total de kilomètres du Tour de France :

```sql
SELECT sum(nb_km) AS total_km FROM ETAPE;
```

### Nombre total de kilomètres des étapes de "Haute Montagne" :

```sql
SELECT sum(nb_km) AS total_km FROM ETAPE
JOIN TYPE_ETAPE ON ETAPE.id_type_etape = TYPE_ETAPE.id
WHERE libelle_type = 'Haute Montagne';
```

### Classement général des coureurs :

```sql
--- nom, id_equipe, id_pays, temps_realise

SELECT nom, id_equipe, id_pays, sum(temps_realise) AS temps, FROM COUREUR
JOIN PARTICIPER on COUREUR.id = PARTICIPER.id_coureur
GROUP BY PARTICIPER.id_coureur
ORDER BY temps;
```
