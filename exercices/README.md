# Mise en place d'un flux de publication avec OGR VRT -- exercices pratiques

Faute de mieux, on va jouer avec des données prises essentiellement sur data.gouv.fr.

Si vous avez des données à vous, n'hésitez pas à les mettre en jeu.

Exercices : 

 - [`Livrable attendu`] [Exercice 1 : publication d'une donnée tabulaire simple et jointure](exercice1.md)
 - [Exercice 2 : filtrer le contenu à publier](exercice2.md)
 - [Exercice 3 : corriger un code directement dans le VRT](exercice3.md)
 - [`Livrable attendu`] [Exercice 4 : un fichier tabulaire avec coordonnées lat/lon](exercice4.md)
 - [Exercice 5 : prendre un fichier distant pour source](exercice5.md)
 - [Exercice 6 : union de jeux de données](exercice6.md)
 - [`Livrable attendu`] [Exercice 7 :  on automatise](exercice7.md)
 - [Exercice 8 : faisons une 'appli' basique de crowdsourcing](exercice8.md)
 -  Exercice 9... 
 ah, ben, y'en a plus

On peut regarder qq cas concrets dans lesquels le VRT m'a bien servi et fait gagner beaucoup de temps :

- https://github.com/pi-geosolutions/vrt2rdf
- un cas de réorganisation des données, pour le projet SAGUI : https://github.com/HydroMetGuyane-Hydro-Matters/sagui_backend/tree/main/data
- les VRT utilisés couramment par l'équipe SIG de la région des Hauts de France : https://github.com/geo2france/vrt/

Combiné à un peu de code python, on peut faire des miracles en termes de traitement de données.

Ah, et j'oubliais : remarquez dans la doc de vrt2rdf comment on peut même [pointer vers une source WFS](https://github.com/pi-geosolutions/vrt2rdf#connect-any-data-source-using-the-vrt)

## Exercice en autonomie (déposer le résultat sur Digiforma):

On finira par un exercice en autonomie, pour l'évaluation digiforma : 
(sur la version PDF de ce document, ce lien ne marchera pas. Vous trouverez l'exercice en fin de document)

[Exercice en autonomie](./auto.md)


## Nettoyage
Avant de quitter votre ordi, prenez le temps de stopper votre service cron si vous l'avez lancé durant l'exercice 7: dans une console WSL2, lancez la commande
```
sudo service cron stop
```
