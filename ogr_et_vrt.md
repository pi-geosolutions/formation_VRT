# GDAL/OGR

- https://gdal.org/
- Une librairie *opensource*, largement utilisée (sous le capot) par de nombreux outils y compris propriétaires
- Traitement de données géospatiales
- Essentiellement des supports entrées/sortie : un nombre incroyable de formats supportés
- Des outils en ligne de commande :
  - Support raster : [GDAL](https://gdal.org/programs/index.html#raster-programs)
  - Support Vecteur : [OGR](https://gdal.org/programs/index.html#vector-programs)

## VRT

- Un format interne de GDAL/OGR
- Plus connu pour sa version raster, mais existe aussi pour des données vectorielles et tabulaires : 
- https://gdal.org/drivers/vector/vrt.html
- OGR VRT, ça vous permet notamment de :
  - Faire l’économie d’un ETL
  - Autonomiser vos collègues amateurs d’Excel (et donc alléger votre charge de travail)
  - Augmenter la reproductibilité de vos flux de traitement de données
  - Automatiser vos flux de traitement de données
  - Frimer pendant une soirée (de géomaticiens)
- Supporté par QGIS
- Pas limité aux données tabulaires, loin de là. Mais les supporte
- Fichier XML, de configuration de la source de données. Permet de :
  - renommer des champs
  - changer le type des champs (entier, réel, date, texte)
  - ne conserver qu’un sous-ensemble des champs
  - choisir les champs définissant la géométrie (si présents)
  - filtrer le jeu de données via une requête SQL
  - découper sur une étendue via une requête SQL
  - reprojeter un jeu de données
  - fusionner plusieurs sources
  - charger des sources de données en ligne

### Un exemple de fichier VRT simple

![](imgs/screenshot1.png "vrt simple")

### Exemple expliqué

![](imgs/screenshot2.png "vrt simple expliqué")

- On définit la source de données
- On renomme les champs
- On publie le VRT (via QGIS ou ogr2ogr)

### Conditions de fonctionnement
- Encodage UTF-8
- Pas de fusion de cellules
- Une vraie donnée tabulaire (pas de mise en forme)

### Obtenir un VRT de départ
Pour créer votre fichier VRT, vous avez le choix. Vous pouvez :
- L’écrire à la main, grâce à la doc (vite pénible)
- Le générer via QGIS et l’extension Spreadsheet Layer : génère un fichier VRT à côté du fichier ouvert. Supporte XLS, XSLX, ODS, CSV
- Le générer en ligne de commande via https://github.com/jeanpommier/ogr2vrt_simple
- A partir de GDAL 3.6, un script ogr2vrt devrait être livré avec la librairie.