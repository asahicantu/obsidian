-   Install for Centos
```bash
  Yum-utils
-   Device-mapper-persistend-data
-   Sudo yum install -y yum-utils
-   sevice-mapper-persistent-data
-  sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum-config-manager --enable docker-ce-nightly
sudo yum-config-manager --enable docker-ce-test
sudo yum-config-manager --disable docker-ce-nightly
sudo yum-config-manager --disable docker-ce-test
yum list docker-ce --showduplicates | sort -r
sudo yum install docker-ce-18.09.3 docker-ce-cli-18.09.3 conainerd.io
sudo yum install docker-ce docker-ce-cli conainerd.io
sudo systemctl start docker
sudo systemctl enable docker
sudo docker run hello-world
# create a docker group to run without sudo
sudo groupadd docker
sudo usermod -aG docker asahicantu

```
-  Other common commands
```bash
dockerd --help | more
docker --help | more
docker image ls
docker pull nginx
docker ps
docker run -d  --name nginxtest nginx
docker run hello-world
docker info
docker image ls
docker pull nginx
docker run -it ubuntu
#Brings current conainer session to current prompt
docker attach [id of the container] 
# Uses a new bashs shell from another container (no replication)
docker exec -it [id of the container] bash
# Runs container in detached mode
docker run -d nginx
docker run -d ubuntu
docker run -d mongo
docker run -d redis
docker run --name [container name] -it -d ubuntu
docker image ls
docker ps
docker run --help | more
docker stop [container name] [id]
docker start [container name] [id]
docker restart
docker restart
#check container names [To get hostname run 'hostname inside container']
docker ps -a 
#[Prints the name of the host inside the container] which matches the container id
docker exect [container id] hostname 
docker ps --format '{{.Names}}'
$names = $(docker ps --format '{{.Names}}') | docker start $names
## Windows Location for docker images \\wsl.localhost\docker-desktop-data\data\docker\containers
## Linux /var/lib/docker
## Container ids match with folder ids inside those docker folders
## Docker image data \\wsl.localhost\docker-desktop-data\data\docker\image\overlay2\imagedb\content\sha256



```
___
