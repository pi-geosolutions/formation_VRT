#!/bin/bash

pandoc -f markdown  -V block-headings -V geometry:margin=25mm -V urlcolor=[HTML]{050377} -V fontsize=11pt \
  -o formation_VRT.pdf README.md .latex/pagebreak.md \
  demos/README.md .latex/pagebreak.md  \
  ogr_et_vrt.md .latex/pagebreak.md  \
  samples/README.md .latex/pagebreak.md  \
  exercices/README.md .latex/pagebreak.md  \
  exercices/exercice1.md .latex/pagebreak.md  \
  exercices/exercice2.md .latex/pagebreak.md  \
  exercices/exercice3.md .latex/pagebreak.md  \
  exercices/exercice4.md .latex/pagebreak.md  \
  exercices/exercice5.md .latex/pagebreak.md  \
  exercices/exercice6.md .latex/pagebreak.md  \
  exercices/exercice7.md .latex/pagebreak.md  \
  exercices/exercice8.md .latex/pagebreak.md  \
  exercices/conclusion.md .latex/pagebreak.md  \
  exercices/auto.md