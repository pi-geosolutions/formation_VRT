## Exercice 1 : publication d'une donnée tabulaire simple et jointure

---

> **Livrable attendu**
>Sur cet exercice, je vous demanderai de faire une copie écran de votre carte finale et de la déposer sur digiforma. Pas de panique, on va le dérouler ensemble, mais suivez bien, et n'hésitez pas à poser des questions.
>
>Nommage attendu : nom_exo1_subventions.png

---

### Sources de données

On va utiliser https://www.data.gouv.fr/fr/datasets/logements-vacants-du-parc-prive-par-anciennete-de-vacance-par-commune-et-par-epci/ et on prendra la donnée _**par commune au format xslx**_.

### Prérequis

QGIS, avec l'extension Spreadsheet Layer installée

### Déroulé

**Avec QGIS et l'extension Spreadsheet Layer**, ouvrir la première feuille. Cela va générer un VRT correspondant. Le nom du fichier VRT est un peu long. Renommez le fichier et ouvrez-le dans un éditeur de code.

> Une alternative en mode _ligne de commande_ : vous pouvez aussi utiliser le script [ogr2vrt_simple](https://github.com/jeanpommier/ogr2vrt_simple).
>
> *Pour la suite, vous aurez toujours le choix : utiliser le script et votre clavier, ou l'interface graphique et la souris.*

Retouchez un peu le VRT si nécessaire pour le rendre plus compatible avec les contraintes d'une base de données (pas de caractères accentués, pas d'espace), puis le publier en base. Là aussi, vous avez le choix : le publier via QGIS et son database manager (lent) ou bien utiliser [ogr2ogr](./ogr.md)

**On va aussi publier en BD les contours des communes dans le Gers** (prendre dans demos/union), pour pouvoir faire une jointure. On n'a pas encore vu les serveurs carto, donc on fera le rendu dans QGIS. Faites-nous une jolie carte mettant en évidence les communes les mieux dotés en logements sociaux.

_**Faites une copie d'écran de la carte obtenue, pour le livrable de cet exercice.**_


---

*[Exercice suivant](exercice2.md)*