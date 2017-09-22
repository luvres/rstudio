## RStudio IDE 1.0.153
-----
#### Create a directory for rstudio and Include above on flag "-v"
```
mkdir $HOME/rstudio
```
#### Run
```
docker run -ti --rm --name RStudio \
--net=host \
-e DISPLAY=unix$DISPLAY \
-v /tmp/.X11-unix \
-v $HOME/.Xauthority:/root/.Xauthority \
-v $HOME/rstudio:/root \
izone/ide:rstudio rstudio
```
-----
### Builds ..
```
docker build -t izone/ide:rstudio .
```
