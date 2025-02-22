# Démos

*Dossier `demos`*

Dézipper les deux archives zip avant usage.

## Union de données géospatiales
On l’a dans union/

### Objectif pédagogique
Démontrer comment le VRT permet de :

- filtrer sur une valeur attributaire
- rassembler plusieurs jeux de données, y compris geo
- rajouter du contenu

### Objectif de la manip
Produire une carte des communes du Gers + Lot et Garonne, sans doublons.

Le pb m’avait été soumis par F., élève CQPGeom. Ils avaient récupéré des extractions BD topo par département. Sauf que à chaque fois, ils avaient en bonus les communes limitrophes. Après avoir importé les deux shp dans la BD, ils avaient donc des doublons. Voire des erreurs si contrainte d’unicité.

Ils avaient passé plusieurs jours à trouver comment éviter les doublons. Je leur ai trouvé une solution en 15 min en fin de cours.

En bonus, j’ai en commentaire dans le VRT l’ajout d’un champ texte avec concaténation, pour le Gers (hello). 

On peut aussi rajouter le calcul de la surface totale par commune en hectares, pour montrer une opération geométrique 

_-> note : contrairement à admin express, cette donnée contient déjà la surface, ainsi que les codes postaux._

### Déroulé
J’explique le pb. On charge chaque commune dans QGIS. On regarde le chevauchement. On peut ajouter la couche des départements si on veut.

On va voir la doc VRT, on regarde `OGRVRTUnionLayer`.  
Je charge le VRT, on constate que c’est clean.

Je décommente hello et on regarde ça dans la table attributaire.



## Achat de produit phyto (glyphosate) par code postal
### Source de données : 
https://www.data.gouv.fr/fr/datasets/achats-de-pesticides-par-code-postal/
https://www.data.gouv.fr/fr/datasets/codes-postaux-de-toulouse/

Données dans pesticides/

### Objectif pédagogique

Démontrer comment le VRT permet de :

- générer un “geopackage virtuel” rassemblant des ressources variées
- assurer une reproductibilité. Le process est documenté et facile à dupliquer
- récupérer une ressource directement en ligne si on veut

### Objectif de la manip
Faire une carte de la qté de glyphosate achetée par code postal sur les environs de Toulouse (on pourrait aussi utiliser les limites admin du Gers). On a des données sur plusieurs années donc on peut cartographier l’évolution

```xml
<OGRVRTLayer name="bnvd_occitanie_2021">
    <SrcDataSource relativeToVRT="1">BNVD_TRACABILITE_20221016_ACHAT_CP_SUBSTANCE_OCCITANIE_2021.csv
    </SrcDataSource>
    <SrcSql dialect="sqlite">SELECT code_postal_acheteur, substance, SUM(CAST(quantite_substance as decimal)) AS qte FROM (SELECT * FROM BNVD_TRACABILITE_20221016_ACHAT_CP_SUBSTANCE_OCCITANIE_2021 WHERE substance='glyphosate') GROUP BY code_postal_acheteur</SrcSql>
</OGRVRTLayer>
```
On somme les données pour la substance glyphosate

### Déroulé

Je charge les tables de bdnv.vrt. On fait une jointure sur les codes postaux avec 2021 et puis on fait une carte d’intensité d’achats, le rouge, c’est bien. 

Ensuite, je rajoute une jointure sur 2020 dans le VRT et charger cette nouvelle table. Jointure à nouveau. Puis clic droit sur la couche codes_postaux, styles, ajouter. Ca va me copier le style par défaut. J’en profite pour les nommer par année. Et je change l’attribut utilisé pour le style.

Ensuite, je décommente 2022. Je peux faire remarquer que là, je tape direct dans la ressource en ligne (utiliser ogr2vrt_simple pour choper l’adresse correcte). Et bis répétita.
