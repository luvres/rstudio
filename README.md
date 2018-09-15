## RStudio IDE 1.1.453

-----
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
