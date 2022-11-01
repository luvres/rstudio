# Rocker RStudio Appitainer 
### https://github.com/rocker-org/rocker-versioned2

#### Build RStudio (Remove DEFAULT_USER)
``docker build -t izone/rstudio:4.2.2 -f dockerfiles/rstudio_4.2.2.Dockerfile .``

#### Build tidyverse
``docker build -t izone/rstudio:tidyverse_4.2.2 -f dockerfiles/tidyverse_4.2.2.Dockerfile .``

#### Build Verse
``docker build -t izone/rstudio:verse_4.2.2 -f dockerfiles/verse_4.2.2.Dockerfile .``

-----

## RStudio IDE 1.1.456
#### Create a directory for rstudio and Include above on flag "-v"
```
mkdir $HOME/rstudio
```
#### Run
```
docker run -ti --rm --name RStudio \
--net=host \
--device /dev/dri \
-e DISPLAY=unix$DISPLAY \
-v /tmp/.X11-unix \
-v $HOME/.Xauthority:/root/.Xauthority \
-v $HOME/rstudio:/root \
izone/rstudio rstudio
```

-----
### Builds ..
```
docker build -t izone/rstudio .
```
