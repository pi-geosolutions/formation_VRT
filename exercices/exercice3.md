# Exercice 3 : corriger un code directement dans le VRT
Un exercice simple, avec correction de données mal formattées, directement via le VRT.

On va corriger le code de département dans le VRT directement.

## Sources de données
On va prendre https://www.data.gouv.fr/fr/datasets/boursiers-par-departement/, le fichier CSV.


## Déroulé
Générer le VRT avec l'outil de votre choix. Examinez les valeurs (via QGIS, ou en ligne de commande avec ogr2ogr). Notamment le code de département. Ca vous rappelle qq chose ?

On a vu en exercice 1 comment corriger ça dans PostgreSQL. C'est assez facile. Mais ça serait plus satisfaisant de le faire dès le VRT. Malheureusement, la commande LPAD ne marchera pas. En effet, dans VRT, c'est une syntaxe sqlite qui est utilisée (et encore, pas complète, ou alors pas récente).
Le mieux que j'aie trouvé, c'est la syntaxe suivante : `printf("%02d", "numero_departement") AS code_dep`

Vérifiez que ça rectifie bien le code de département.


Vous savez déjà publier et faire une jointure, donc peut-être pas besoin de le refaire ici.