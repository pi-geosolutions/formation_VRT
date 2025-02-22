# Formation VRT
_Jean Pommier, jean.pommier@pi-geosolutions.fr_

_[IdGeo](https://www.idgeo.fr/), 24 février 2025_

---

_Sources : https://github.com/pi-geosolutions/formation_VRT/tree/cpgeom202502_

---

\vspace{2cm}

Ce cours a pour objectif de vous faire découvrir un format particulier de la librairie OGR, le format VRT. Ce format de donnée virtuelle permet de faire beaucoup de choses et dans bien des cas de se passer d'un ETL.

## Préambule

La version PDF de ce cours est générée à partir du [code en ligne sur github](https://github.com/pi-geosolutions/formation_VRT/tree/cpgeom202402), à l'aide de l'outil en ligne de commande [pandoc](https://pandoc.org/). La commande utilisée est `./make_pdf.sh`.

Le résultat est imparfait mais correct (à mon avis). Je vous prie de m'excuser pour les légers couacs de rendu.

A noter que le format PDF n'est guère adapté aux copier-coller, en particulier de code. C'est pourquoi j'ai choisi de présenter ce cours sous la forme d'un ensemble de fichiers Markdown, faciles à lire depuis la page github, mais aussi très pratiques pour copier-coller du code.

## Déroulé proposé pour ce cours :

1. Tour de table : 
    - vous faites comment, vous, l'intégration de données ?
        - Vous arrive-t-il de charger des fichiers en base de donnée ?
        - Quels outils utilisez-vous ?
        - Quelles difficultés rencontrez-vous ?
    - comment faciliter la vie de vos collègues non techniques ?
        - Rencontrez-vous des problèmes d'interopérabilité entre leurs outils logiciels et les vôtres ?
        - Que faites-vous si vous devez publier un ficher Excel ?
        - Et si le contenu de ce fichier devait être maintenu à jour dans une base de données ?
        - Comment assurez-vous la reproductibilité de vos process de publication ?
1. [démos](demos/README.md)
1. [Présentation rapide de la librairie GDAL/OGR et du format VRT](ogr_et_vrt.md)
1. [Exploration de fichiers VRT](samples/README.md)
1. [Exercices accompagnés : génération et usage de fichiers VRT](exercices/README.md)
