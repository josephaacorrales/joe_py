# Hello Joe
### A python script containerized
<br>

## Running the script
In CLI, navigate to project directory
Have Docker build image from Dockerfile and name it "joe"
```
docker build . -t joe
```
Show all top level images, their repository and tags, and their size
```
docker images list
```
Have docker create new Joe image
```
docker run joe
```