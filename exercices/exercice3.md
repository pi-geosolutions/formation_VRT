## Exercice 3 : corriger un code directement dans le VRT
Un exercice simple, avec correction de données mal formatées, directement via le VRT.

On va corriger le code de département dans le VRT directement.

### Sources de données
On va prendre [https://www.data.gouv.fr/fr/datasets/boursiers-par-departement/](https://www.data.gouv.fr/fr/datasets/boursiers-par-departement/), le fichier CSV.


### Déroulé
Générer le VRT avec l'outil de votre choix. Examinez les valeurs (via QGIS, ou en ligne de commande avec ogr2ogr). Notamment le code de département. Ca vous rappelle qq chose ? Cest un cas de figure assez courant.

On pourrait corriger ça dans PostgreSQL avec, par exemple, la commande LPAD. C'est assez facile. Mais ça serait plus satisfaisant de le faire dès le VRT. Malheureusement, la commande LPAD ne marchera pas. En effet, dans VRT, c'est une syntaxe sqlite qui est utilisée (et encore, pas complète, ou alors pas récente).
Pendant un temps, je proposais la syntaxe suivante :  
`printf("%02d", "numero_departement") AS code_dep`  
Mais si on regarde les départements dotés d'un code à 3 caractères, c'est pas concluant. On peut alors s'en sortir avec  
`CASE WHEN length(numero_departement) > 1 THEN numero_departement ELSE '0'||numero_departement END AS code_dep`.

Vérifiez que ça rectifie bien le code de département.


Vous savez déjà publier et faire une jointure, donc peut-être pas besoin de le refaire ici.


---

*[Exercice suivant](exercice4.md)*