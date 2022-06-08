| Code                | Libellé                           | Type      | Contraintes                                                               |
| ------------------- | --------------------------------- | --------- | ------------------------------------------------------------------------- |
| **num_inscription** | Numéro d'inscription du stagiaire | Texte     | Identifiant unique                                                        |
| **nom**             | Nom du stagiaire                  | Texte     | -                                                                         |
| **prenom**          | Prénom du stagiaire               | Texte     | -                                                                         |
| **num_formation**   | Numéro de la formation            | Texte     | Identifiant unique                                                        |
| **intitule**        | Intitulé de la formation          | Texte     |                                                                           |
| **niveau**          | Niveau du titre professionel      | Texte     | Peut être nul                                                             |
| **duree**           | Durée de la formation en heures   | Numérique |                                                                           |
| **date_debut**      | Date du début de la formation     | Date      |                                                                           |
| **date_fin**        | Date de fin de la formation       | Date      | Calculé : dépend de la date de début de la formation (date_début + durée) |
