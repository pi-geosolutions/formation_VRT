# Infos utiles

## Connexion à la base de données

On utilisera la base de donnée servie sur l'ordi du formateur (s'appuyer sur docker/docker-compose.yml). 

Les paramètres de connexion seront es suivants : 
- hôte : IP à voir en fonction de la config réseau
- port : `5432` 
- user: `cpgeom`
- mot de passe: `secret`
- schema : vous créerez un schema qui vous sera propre : première lettre du prénom suivi du nom de famille (dans mon cas par exemple : `jpommier`)

Oui, je sais. Ce n'est absolument pas sécurisé. Ce n'est en effet pas un cours sur les bases de données, plutôt sur l'étape en amont (publication/transfo des données).

### *Pour info*, cas d'une connexion à une BD distante, sécurisée, accès via tunnel ssh

En général, vous ne pourrez pas accéder directement à une BD externe sur le port 5432. En effet, pour que cela soit possible en sécurité, cela implique de configurer une connexion cryptée, à minima. Et malgré tout, la BD reste un peu exposée.

En général, ce qui se fait, c'est de maintenir la BD dans un réseau interne, qui n'est pas accessible directement depuis internet. Ensuite, trois options : 
1. ben... pas d'accès externe du tout. Pas pratique, mais le plus secure.
2. accès via un VPN
3. accès via un tunnel SSH. Dans ce cas, un accès SSH sur une machine du réseau interne est possible. Cette machine pouvant elle-même accéder à la BD. Dans ce cas, on peut configurer ce qu'on appelle un *tunnel SSH* : une connexion sécurisée est établie entre votre PC et la machine SSH, avec une configuration permettant de relier la BD *à travers* ce tunnel. On joue à saute-moutons si vous voulez.


Le tunnel SSH, nous permettra de faire correspondre un port de notre machine (localhost) avec le port 5432 de la machine *comme si on était dessus*, via une connection cryptée SSH.

La commande est la suivante :
```
ssh -L 15432:localhost:5432 my_user@my_server
```
*Il faudra garder cette connection ssh ouverte tout le temps qu'on voudra accéder à la base à distance*
Et la BD sera accessible localement, sur notre ordi, à localhost:15432

**Note** :
- sous Windows, ça peut aussi se configurer, avec un outil comme Putty par exemple
- pgadmin4 aussi, sait configurer une connexion via tunnel SSH. Le hic étant qu'on ne va pas utiliser que pgadmin4, donc ça ne fera pas l'affaire ici. QGIS par exemple a besoin qu'on établisse le tunnel par nous-même.


## Changer l'encodage d'un fichier
VRT nécessite qu'on travaille avec des fichiers en UTF8. Si ce n'est pas le cas, on doit changer l'encodage préalablement. Par exemple, en ligne de commande, avec la commande suivante :
```
uconv -f windows-1252 -o monfichier-utf8.csv monfichier.csv
```

## Publier un fichier en BD avec ogr
```
# Ou bien on utilise le driver PostgreSQL d'OGR
ogr2ogr -f "PostgreSQL" -nln "roads" -nlt PROMOTE_TO_MULTI -lco OVERWRITE=YES -lco SCHEMA=yourusername PG:"dbname='cqpgeom' host='localhost' port='5433' user='cqpgeom' password='pass'" roads.vrt

# Ou bien on passe par un dump PG (utile dans certains cas)
ogr2ogr -f PGDUMP -nln roads -lco PG_USE_COPY=YES -lco SCHEMA=yourusername -nlt PROMOTE_TO_MULTI /vsistdout/ roads.vrt | psql -h localhost -p 5433 -d cqpgeom -U cqpgeom -f -
```
