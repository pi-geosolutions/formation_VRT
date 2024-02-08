## Exercice 1 : publication d'une donnée tabulaire simple et jointure

---

> **Livrable attendu**
>Sur cet exercice, je vous demanderai de faire une copie écran de votre carte finale et de la déposer sur digiforma. Pas de panique, on va le dérouler ensemble, mais suivez bien, et n'hésitez pas à poser des questions.
>
>Nommage attendu : nom_exo1_subventions.png

---

### Sources de données
On va utiliser https://www.data.gouv.fr/fr/datasets/reserve-parlementaire-2011-attribuee-aux-collectivites-territoriales-nd/ et on prendra la donnée _**au format ods**_ (Rue 89).

### Prérequis
QGIS, avec l'extension Spreadsheet Layer installée

### Déroulé
**Avec QGIS et l'extension Spreadsheet Layer**, ouvrir la feuille "Département et pauvreté". Cela va générer un VRT correspondant. Le nom du fichier VRT est un peu long. Renommez le fichier et ouvrez-le dans un éditeur de code.

> Une alternative en mode _ligne de commande_ : vous pouvez aussi utiliser le script [ogr2vrt_simple](https://github.com/jeanpommier/ogr2vrt_simple).
>
> *Pour la suite, vous aurez toujours le choix : utiliser le script et votre clavier, ou l'interface graphique et la souris.*

Retouchez un peu le VRT si nécessaire pour le rendre plus compatible avec les contraintes d'une base de données (pas de caractères accentués, pas d'espace), puis le publier en base. Là aussi, vous avez le choix : le publier via QGIS et son database manager (lent) ou bien utiliser [ogr2ogr](./ogr.md)

**On va aussi publier en BD les contours des départements** (vous trouverez un tracé simplifié dans geodata/geo.gpkg), pour pouvoir faire une jointure. On n'a pas encore vu les serveurs carto, donc on fera le rendu dans QGIS. Faites-nous une jolie carte mettant en évidence les départements les mieux dotés en subventions.

_Attention :_  pour la jointure, vous allez avoir un pb avec les numéros de départements. Pourquoi ?

C'est une erreur classique, qu'il est important de avoir résoudre. On peut le faire à différents niveaux. Dans ce cas ci, on va le faire côté postgresql. Il existe une commande SQL, `LPAD` qui devrait faire votre affaire.

_**Faites une copie d'écran de la carte obtenue, pour le livrable de cet exercice.**_


---

*[Exercice suivant](exercice2.md)*