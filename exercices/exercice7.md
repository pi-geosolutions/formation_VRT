# Exercice 7 :  on automatise
---
## Livrable attendu
Sur cet exercice, je vous demanderai de faire une copie écran de votre tâche cron.

Nommage attendu : nom_exo7_crontab.png
---

Il y a plein de façons d'automatiser un flux de publication. Nous allons rester sur un cas de figure assez simple : actualisation régulière d'une donnée via une tâche planifiée (crontab) sur un serveur linux.
## Source de donnée
Nous utiliserons la donnée de l'exercice 5.

## Déroulé
### Mise en route de cron
A défaut d'accéder à un serveur, on va activer temporairement cron sur votre instance WSL2. Dans une console linux : 
```
# On regarde si cron tourne (en principe non)
sudo service cron status
# S'il n'est en effet pas activé, on le démarre
sudo service cron start
```
Vous trouverez plein de docs sur crontab sur le net. Par exemple : https://www.linuxtricks.fr/wiki/cron-et-crontab-le-planificateur-de-taches. 

### Utilisation de cron
On va commencer par une tâche bêbête : créer un fichier et changer sa date de modif. Comme ça on saura si cron marche

`crontab -e` pour éditer le ficher de config cron.

Et on ajoute la ligne
```
* * * * * touch ~/cron-marche.txt
```
Sauvegardez.

Attendons maintenant une minute, et le fichier devrait avoir été créé dans ~/cron-marche.txt : `ls -la ~/` devrait vous le montrer.

Attendez encore une minute ou deux, recommencez la commande ls, la date de modif du fichier doit avoir changé. Ca marche.

### Publication/mise à jour automatique de la donnée
Vous avez noté la commande utilisée pour la publication de l'exercice 5 ? Allez, on l'automatise.

A savoir que cron ne sait pas tout. Pas tout ce qu'on sait. Il n'a pas accès à nos variables d'environnement. Le mot de passe postgresql par exemple. Et ne sait pas toujours où trouver les fichiers exécutables, en dehors de la base. On va donc lui faciliter la tâche : 
1. on localise le chemin complet vers la commande ogr2ogr : `which ogr2ogr`. On utilisera ce chemin pour l'appeler dans la ligne cron
1. on va faire simple, on va utiliser le mot de passe et les autres valeurs en clair dans la commande. Ajustez votre commande ogr2ogr en fonction. Dans la "vie réelle", on procéderait différemment, par exemple avec un fichier `.pgpass`.
1. allez, zou, `crontab -l` et programmez une publi de votre fichier toutes les 5 minutes (on pensera à supprimer cette tâche en fin de cours, afin de ne pas republier cette donnée éternellement).

_**Faites un `crontab -l` et faites-en une copie d'écran, pour le livrable de cet exercice.**_


Pouvez-vous pensez à d'autre scenari possibles/souhaitables ?
