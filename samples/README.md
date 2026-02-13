# Echantillons de fichiers VRT simples

*Dossier `samples/`*

Voilà quelques VRT échantillons qu'on pourra utiliser pour explorer.

On peut :

- les ouvrir dans l'éditeur de code pour voir sous le capot
- les charger dans QGIS
- les manipuler en ligne de commande :
  - lister les infos avec  
  `ogrinfo -so -al monfichier.vrt`
  - afficher le contenu au format CSV avec  
  `ogr2ogr -f CSV /vsistdout/ monfichier.vrt`

On pourra aussi regarder des VRTs sur https://github.com/geo2france/vrt.