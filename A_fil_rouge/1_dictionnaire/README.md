# Village Green : dictionnaire de données

| Donnée                    | Nom dans la base                | Type        | Remarques |
| ------------------------- | ------------------------------- | ----------- | --------- |
| ID fournisseur            | fournisseur_id                  | int         | PK        |
| Raison sociale            | fournisseur_nom                 | varchar     |           |
| Adresse fournisseur       | fournisseur_adresse             | varchar     |           |
| Code postal fournisseur   | fournisseur_code_postal         | varchar(10) |           |
| Ville fournisseur         | fournisseur_ville               | varchar     |           |
| Pays fournisseur          | fournisseur_pays                | varchar     |           |
| Nom contact fournisseur   | fournisseur_contact             | varchar     |           |
| Téléphone fournisseur     | fournisseur_telephone           | varchar(12) |           |
| E-mail fournisseur        | fournisseur_email               | varchar     |           |
| ID produit                | produit_id                      | int         | PK        |
| Référence fournisseur     | produit_reference               | varchar     |           |
| Libellé produit           | produit_libelle                 | varchar     |           |
| Description produit       | produit_description             | varchar     |           |
| Prix HT produit           | produit_prix                    | decimal     |           |
| Photo produit             | produit_photo                   | varchar     |           |
| Quantité en stock produit | produit_quantite                | int         |           |
| Rubrique produit          | produit_rubrique                | int         | FK        |
| ID rubrique               | produit_rubrique_id             | int         | PK        |
| Nom rubrique              | rubrique_nom                    | varchar     |           |
| Rubrique parent           | rubrique_parent_id              | int         |           |
| ID commande               | commande_id                     | int         | PK        |
| Commande validée          | commande_validee                | boolean     |           |
| Date commande             | commande_date                   | date        |           |
| Date paiement commande    | commande_date_paiement          | date        |           |
| Date d'envoi commande     | commande_date_envoi             | date        |           |
| Livraison partielle       | commande_partielle              | boolean     |           |
| Adresse de facturation    | commande_adresse_facturation    | varchar     |           |
| Adresse de livraison      | commande_adresse_livraison      | varchar     |           |
| Pays de livraison         | commande_pays_livraison         | varchar     |           |
| Remise supplémentaire     | commande_remise                 | double      |           |
| Quantité commandée        | detail_commande_quantite        | int         |           |
| Quantité livrée           | detail_commande_quantite_livree | int         |           |
| Prix unitaire             | detail_commande_prix_unitaire   | double      |           |
| Remise                    | detail_commande_remise          | double      |           |
| Total                     | detail_commande_total           | double      |           |
| ID client                 | client_id                       | int         | PK        |
| Référence client          | client_reference                | varchar     |           |
| Nom client                | client_nom                      | varchar     |           |
| Prénom client             | client_prenom                   | varchar     |           |
| Adresse client            | client_adresse                  | varchar     |           |
| Code postal client        | client_cp                       | varchar(10) |           |
| Ville client              | client_ville                    | varchar     |           |
| Pays client               | client_pays                     | varchar     |           |
| Téléphone client          | client_tel                      | varchar(12) |           |
| E-mail client             | client_email                    | varchar     |           |
| Coefficient               | client_coeff                    | double      |           |
| Particulier               | client_particulier              | boolean     |           |
| ID employé                | employe_id                      | int         | PK        |
| Nom employé               | employe_nom                     | varchar     |           |
| Prénom employé            | employe_prenom                  | varchar     |           |
| ID service                | service_id                      | int         | PK        |
| Nom service               | service_nom                     | varchar     |           |
| ID bordereau livraison    | bl_id                           | int         | PK        |
| Date bordereau            | bl_date                         | date        |           |
| ID commande               | commande_id                     | int         | FK        |
| ID facture                | facture_id                      | int         | PK        |
| Date facture              | facture_date                    | date        |           |
| ID commande               | commande_id                     | int         | FK        |
