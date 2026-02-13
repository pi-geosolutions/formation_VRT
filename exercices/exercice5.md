## Exercice 5 : prendre un fichier distant pour source

### Sources de données
**Reprenons notre donnée de l'exercice 2**. Faire évoluer la définition de la source pour utiliser directement une URL.

### Déroulé
_Indice_ : on utilisera [`vsicurl`](https://gdal.org/user/virtual_file_systems.html)

A noter que si besoin, on peut même chainer avec un dézippage (`viszip`, `vsigz`).

On pourra s'inspirer de [l'article suivant sur geotribu](https://static.geotribu.fr/articles/2021/2021-09-07_traiter_fichiers_adresse_gdal_csv_vrt/).


_**Info**_ : dans certains cas, l'extension du fichier n'est pas fournie par le service web. VRT n'est alors pas capable de détecter le type de fichier et ça ne marche plus. Dans le cas bien particulier d'un CSV (ne marche pas pour d'autres extensions), on peut expliciter le format par la syntaxe suivante :
`<SrcDataSource>CSV:/vsicurl/https://....</SrcDataSource>`.  
Noter le **`CSV:`** devant `vsicurl`

_**Votre donnée doit pouvoir s'afficher dans QGIS.**_


_Vous pouvez aussi recourir à `ogr2vrt_simple`, qui doit pouvoir générer une définition fonctionnelle de source en mode vsicurl._


---

*[Exercice suivant](exercice6.md)*