# Exercice 2 : filtrer le contenu à publier

On va publier une carte montrant la proportion occupée par la production agricole bio par rapport à la surface totale, pour chaque commune du Gers, en 2020.

## Sources de données
Téléchargez le fichier https://www.data.gouv.fr/fr/datasets/surfaces-cheptels-et-nombre-doperateurs-bio-a-la-commune/. 

## Déroulé
### ogr2vrt_simple
On va installer le script [ogr2vrt_simple](https://github.com/jeanpommier/ogr2vrt_simple).

Windows ne nous facilite pas trop la vie pour le code python, surtout avec les bindings GDAL. C'est pourquoi **on va travailler dans linux WSL2 (debian)**.

- Ouvrez une console debian
- vérifier si gdal/ogr est installé : `ogrinfo --version`
- si vous avez une erreur, c'est que non, donc on va l'installer : 
  - on met à jour la liste des paquets : `sudo apt update`
  - on installe GDAL/OGR : `sudo apt install gdal-bin`
- on va vérifier votre version de python, on veut > 3.8 : `python3 --version`
- on crée un environnement virtuel, afin de cloisonner nos installations de paquets python : 
  - `python3 -m venv ogr2vrt_venv`
  - `source ogr2vrt_venv/bin/activate`
  - `(ogr2vrt_venv)` devrait apparaitre à gauche du prompt
- on installe ogr2vrt_simple : suivre les instructions d'installation de https://github.com/jeanpommier/ogr2vrt_simple

## Générer le VRT

Utilisez la même commande pour générer votre VRT pour la donnée bio. Puis éditez-le dans un éditeur de texte.

- Première étape : on filtre les entrées pour ne garder que les données sur le Gers (32). On utilisera une source SrcSql pour cela
- Deuxième étape : ne garde que les colonnes liées à 2020
- On vérifie bien le résultat
- Et puis on publie en base
- puis jointure avec les limites administratives du Gers (on pourra prendre la couche geo dans  [../demos/union/communes3247.vrt](../demos/union/communes3247.vrt) )
- et affichage carto

