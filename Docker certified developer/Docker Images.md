
Are the building blocks through which containers are built.
* Read-only template with instructions for running a docker container
* Writable layer gets created once a container is spun from an image
* Repositories hold multiple images
* Registry stores repositories
![Docker Registry Server](./Resources/DockerRegistryServer.png)

### Layered file system
* Docker uses UnionFS for implementing the layered docker images
* The resulting filesystem contains files and subdirecotries from any or all the underlying filesystems
* Any update on the image, adds a new layer
* All changes made to the running container are written to the writtable layer
![DockerLayeredFileSystem](./Resources/DockerLayeredFileSystem.png)

```bash
docker images
docker image ls
docker image ls --no-trunc
docker image ls mongo
# filter images
docker image ls --filter "before=<imageid>"
docker image ls --filter "since=<imageid>"
docker images ls --filter "since=<imageid>"
docker image ls --filter "dangling=true"
docker image ls --format "{{.ID}}:{{.Repository}}"
# Remove images
docker image rm
docker image prune
docker image prune --all
docker image ls

```

## Inspect images
```bash
docker image inspect <image_id>
```

## Image tagging
When there are multiple tags of the same image (same image id) then after run 
```
docker image rm <image_name>:<tag>
```
Then the result will be "image" untagged
```bash
docker image tag redis:latest asahicantu:latest
docker image tag tomcat:latest tomcat:1.1
```

## Image repositories
* User repository
* Top level repository
```bash
docker search repo_name
docker pull ubuntu:latest
```

## Building image using Dockerfile
* Dockerfile contains a series of instructions paired with arguments
* Each instruction should be in upper-case and followed by an argument
* Instructions in the Dockerfile are processed top-down
* Each instruccion adds a new layer to th eimage and then commits the image
* Upon running, changes made by an instruction make it to the container
* If Dockerfile stops for some reason, you will be left with a working image
```DOCKERFILE
FROM ubuntu:18.10
LABEL maintainer="asahicantu@mail.com"
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y nginx
COPY index.html /usr/share/nginx/html/index.html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daeomon off;"]
EXPOSE 80
```