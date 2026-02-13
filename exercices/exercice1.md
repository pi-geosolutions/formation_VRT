## Exercice 1 : publication d'une donnée tabulaire simple et jointure

---

> **Livrable attendu** : sur cet exercice, je vous demanderai de faire une copie écran de votre carte finale et de la déposer sur digiforma. Pas de panique, on va le dérouler ensemble, mais suivez bien, et n'hésitez pas à poser des questions.
>
> Nommage attendu : nom_exo1_logvac.png

---

### Sources de données

On va utiliser [une donnée des logements vacants sur datagouv](https://www.data.gouv.fr/datasets/logements-vacants-du-parc-prive-par-commune-departement-region-france) et on prendra la donnée _**au format xslx**_.

### Prérequis

QGIS, avec l'extension Spreadsheet Layer installée

### Déroulé

**Avec QGIS et l'extension Spreadsheet Layer**, ouvrir la feuille DEP. Cela va générer un VRT correspondant. Le nom du fichier VRT est un peu long. Renommez le fichier et ouvrez-le dans un éditeur de code.

> Une alternative en mode _ligne de commande_ : vous pouvez aussi utiliser le script [ogr2vrt_simple](https://github.com/jeanpommier/ogr2vrt_simple).
>
> *Pour la suite, vous aurez toujours le choix : utiliser le script et votre clavier, ou l'interface graphique et la souris.*

Retouchez un peu le VRT si nécessaire pour le rendre plus compatible avec les contraintes d'une base de données (pas de caractères accentués, pas d'espace). 

> Pour cet exercice, on va travailler en local, mais on pourrait aussi le pousser en base de données. Là aussi, vous auriez le choix : le publier via QGIS et son database manager (lent) ou bien utiliser [ogr2ogr](./ogr.md). On verra ça plus loin.

**On va aussi utiliser les contours des départements** (prendre dans demos/union/misc), pour pouvoir faire une jointure. On n'a pas encore vu les serveurs carto, donc on fera le rendu dans QGIS. Faites-nous une jolie carte mettant en évidence le taux de logements vacants par département.

_**Faites une copie d'écran de la carte obtenue, pour le livrable de cet exercice.**_

> On pourrait procéder de même avec les logements _par commune_. Sauf que vous voterez qu'un paquet d'entrées sont secrétisées et remplacées par un "s". Il faudrait donc une requête SQL filtrant ces valeurs. Si a un moment vous vous ennuyez, vous pouvez essayer.

---

*[Exercice suivant](exercice2.md)*