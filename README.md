### Ce package permet de sauvegarder votre configuration RStudio sur le SNDS.
+ Il réalise une archive du répertoire `~/.config/rstudio`
+ Puis l'exporte dans le répertoire `~/sasdata1/download` encodé en `base64`
+ Pour plus d'information https://github.com/pietrodito/sndshare
### Installation
+ Il faut d'abord installer le package suivant https://github.com/pietrodito/sndshare
+ Puis créez le fichier `sndstyle.csv` :
```
setwd("~/sasdata1/sasuser/packages_R_externes/")
file.edit("sndstyle.csv")
```
+ Copiez/collez le contenu de [`zzz_sndstyle.csv`](https://raw.githubusercontent.com/pietrodito/sndstyle/main/zzz_sndstyle.csv) dans le fichier `sndstyle.csv` puis sauvegardez.
+ Puis importez le projet :
```
sndshare::import_from_csv("sndstyle.csv")
```
