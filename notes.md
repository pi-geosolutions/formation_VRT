# Notes pour la prochaine session

## fichier reserve_parlementaire.ods
Je l'utilisais en 2024 dans l'exercice 1. Apparement, QGIS n'arrive plus à s'en débrouiller avec l'extension spreadsheet layer.
Par contre, ogr2vrt_simple arrive très bien à s'en sortir avec, et le fichier reste intéressant. Voir si on ne pourrait pas l'utiliser à l'exercice 2 où justement on utilise la CLI.
Il est intéressant pour la visu et la publi en BD, car pas trop compliqué et relativement propre (à part le padding des 0 dans les code dep)

## exercice 3: pad left

La fonction printf ne donne pas un résultat sympa: Aristide (2025) a repéré que ça me transforme les codes corses (02A, 02B) en 02, donc Aisne. Pas joli du tout. Remplacer par une syntaxe en `CASE`

## Publi en BD
C'est potentiellement un peu chronophage. Même si intéressant de leur faire faire au moins une fois.
On reste sur une BD locale (compo docker), c'est déjà ça. Le faire sur un exercice facile et suffisamment propre. Par exemple le fichier réserve parlementaire.
Les guider franchement sur ce point, on n'a pas trop le temps de trainer

## style pour fichier VRT geo
J'ai un pb avec les fichiers VRT et le style dans QGIS. Le fichier communes 3247.vrt est chargé dans QGIS avec un style interne, qui est nul (et non défini en fait). Et ça a l'air de me laisser des glitches ensuite si je redéfinis un style. Un pb avec QGIS 3.40 bratislava ?

## Chemins relatifs
En particulier sous windows, les chemins relatifs posent pb:
- ogr2vrt_cli, lancé sous WSL, va faire du chemin relatif de type ../../mnt/c/...
- QGIS sous windows ne le trouvera pas

Voir si je ne peux pas améliorer org2vrt_simple sur ce sujet

En cours, leur dire de se placer dans le dossier *des données*: ainsi, le chemin relatif sera super simple. Et les commandes aussi, non alourdies par les chemins vers les fichiers.

## Exercice 5 : vsicurl

Utiliser plutôt des données légères, exercice 3 par exemple. Attention vsicurl vs vsicurl_streaming. Préférer un vsicurl pour cet exercice (je crois bien que 3) est du vsicurl_streaming)

En cas de galère, utiliser ogr2vrt_simple, qui lui va nous tester les deux cas de figure et s'en sort en général assez bien.

## Exercices 6, 7, 8, auto
Pas eu le temps cette fois-ci (202502). Ne pas prendre trop mon temps au début. En même temps, j'ai l'impression qu'ils ont mieux compris que d'hab l'idée du VRT, notamment que ça ne contient pas de données. 

## Connecteur BD en lecture
Dylan (2025) m'a confirmé qu'on arrive bien à connnecter VRT à une BD postgres *en lecture*. C'est d'ailleurs, en fait, référencé dans la doc OGR. La syntaxe est `PG: postgresl_connection_string`. Donc un truc du genre `PG: dbname='cpgeom' username='cpgeom' hostname='localhost' password='secret'`

