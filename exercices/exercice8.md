## Exercice 8 : faisons une 'appli' basique de crowdsourcing

***Nous allons faire cet exercice ensemble.***

Google Sheet est capable d'exposer son contenu sur le web au format CSV : Fichier->Partager->Publier sur le web. Il faut bien faire attention à 

- définir un lien pour le document complet, pas juste la feuille
- choisir un format CSV
- activer la publication


### Source de donnée

Nous allons utiliser une feuille Google Sheet pour collecter des observations d'ours sur l'Ariège.

J'ai créé une feuille, sur laquelle vous pouvez saisir vos observations de plantigrades : 

https://docs.google.com/spreadsheets/d/1S5FwbLntADv9ztYlmUrHw83PFOyWCycM5WD8308ttBo/edit?usp=sharing


### Déroulé

- Créer le fichier VRT qui permet de publier cette donnée. Pour obtenir le lien correct, on va dans Fichier -> Partager-> Publier sur le web : https://docs.google.com/spreadsheets/d/e/2PACX-1vRRhuM4Y4JVH-f_ggR8EiHG8cEkqHR5hfLMzursUWTj130ffZEkRY9o8uEwUe63Nr8v-F5pFHqJRYo_/pub?output=csv
- La publier en BD
- La joindre avec la couche des communes, filtrée sur l'Ariège
- Faire une jolie carte montrant combien d'observations ont eu lieu par commune.

Avec une tâche cron, on peut mettre cette donnée à jour toutes les qq minutes, et avoir une carte quasi temps-réel pour suivre une collecte en mode collaboratif.

---

*[Lien suivant](conclusion.md)*