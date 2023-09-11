#usefulTroubleshoot
When no command is found in container for networking related issues
`apt-get update && apt-get install -y iputils-ping`

# The Best Way to Set Up Docker for Your OS

## Docker for Windows 10 Pro/Ent: Setup and Tips

http://store.docker.com

```bash
docker version
cd .\udemy-docker-mastery\
docker ps
docker info
```

## Docker Toolbox for Windows 7, 8 and 10 Home: Setup and Tips

http://store.docker.com
```bash
cd .\udemy-docker-mastery\
docker-machine ls
docker-machine start
docker-machine ls
docker version
docker version
docker-machine ls
docker-machine help
docker-machine env default
docker version
```
## Docker for Mac Setup and Tips

http://store.docker.com

docker version

http://github.com/BretFisher/udemy-docker-mastery

docker version

docker container

docker container run --

docker

docker pause

## Docker for Linux Setup and Tips

docker

http://get.docker.com

curl -fsSL get.docker.com -o get-docker.sh

sh get-docker.sh

sudo usermod -aG docker bret

sudo docker version

docker version

sudo docker version

docker-machine version

http://github.com/docker/compose

http://github.com/docker/compose/releases

curl -L https://github.com/docker/compose/releases/download/1.15.0/docker-compose- `uname -s `- `uname -m` >/usr/local/bin/docker-compose

docker-compose version

http://github.com/docker/machine/releases

http://github.com/BretFisher/udemy-docker-mastery

git clone https://github.com/Bretfisher/udemy-docker-mastery.git

cd udemy-docker-mastery/

docker image

docker image ls --


## Shortcuts
* CTRL + P + Q  : When in command line this command exits the container without exiting the terminal

Install for Centos
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
docker top # Displays running processes in contianer
docker run -d  --name nginxtest nginx
docker run hello-world
docker info
docker container stats # Continuous logging for containe
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
docker run --name [container name] --hostname [host name] -it -d ubuntu

docker stop [container name] [id]
docker start [container name] [id]
docker restart
#check container names [To get hostname run 'hostname inside container']
docker ps -a 
#[Prints the name of the host inside the container] which matches the container id
docker exec [container id] hostname 
docker exec [container name]  hostname 
docker ps --format '{{.Names}}'
docker ps --filter "ancestor=ubuntu"
$names = $(docker ps --format '{{.Names}}') | docker start $names

## Windows Location for docker images \\wsl.localhost\docker-desktop-data\data\docker\containers
## Linux /var/lib/docker
## Container ids match with folder ids inside those docker folders
## Docker image data \\wsl.localhost\docker-desktop-data\data\docker\image\overlay2\imagedb\content\sha256



```
___

## Controlling containers by ip and port
```bash
docker run --name nginx_1 --hostname nginxhost_1 -p 80 -d nginx
docker run --name nginx_2 --hostname nginxhost_2 -p 81 -d nginx
## Browse the containers by using the host port
docker ps
ping localhost:remote port
```

## Monitoring containers
```bash
docker ps
# Display the running processes of a container
docker top <container_id> or <container_name>
# Display a live stream of containers resource usage statistics works with many ids or names
docker stats <container_id> or <container_name> 
# Provides low-level information on Docker objexts
docker inspect <container_id> or <container_name>
```

## System commands
```bash
docker image prune # removes including dangling
docker image prune --filter dangling=true
docker system prune # cleanseverything not currently being used
docker system df # space used

```
## Removing containers
```bash
#running containers cannot be deleted, first they need to be stopped
docker rm <container_id> or <container_name>
#run container and program it to be self deleted once its lifecycle is finished
docker run --rm <container_id> or <container_name>

docker kill $(docker ps -q)

# kill all running containers
docker kill $(docker ps -q)
# delete all stopped containers
docker rm $(docker ps -a -q)
#delete all images with 
docker rmi $(docker images -q)
#update and stop a container that is in a crash-loop
docker update –restart=no && docker stop
# bash shell into container 
docker exec -i -t /bin/bash**_ – if bash is not available use /bin/sh
# bash shell with root if container is running in a different user context 
docker exec -i -t -u root /bin/bash
```


## Swarm
```bash
docker swarm init
docker swarm join token
docker service ps
docker service scale serive_name=n_replicas
docker node ps
docker node ls


```


# Creating and Using Containers Like a Boss

## Check Our Docker Install and Config
```bash
docker version
docker info
docker
docker container run
docker run
```

## Starting a Nginx Web Server

```bash
docker container run --publish 80:80 nginx
docker container run --publish 80:80 --detach nginx
docker container ls
docker container stop 690
docker container ls
docker container ls -a
docker container run --publish 80:80 --detach --name webhost nginx
docker container ls -a
docker container logs webhost
docker container top
docker container top webhost
docker container --help
docker container ls -a
docker container rm 63f 690 ode
docker container ls
docker container rm -f 63f
docker container ls -a
```


## Container VS. VM: It's Just a Process

```bash
docker run --name mongo -d mongo
docker ps
docker top mongo
docker stop mongo
docker ps
docker top mongo
docker start mongo
docker ps
docker top mongo
```

## Assignment Answers: Manage Multiple Containers

### My task
```bash
docker container run --detach --publish 80:80  --name nginx nginx
docker container run --detach --publish 8080:80 --env MYSQL_RANDOM_ROOT_PASSWORD=yes  --name mysql mysql
docker container run --detach --publish 3306:3306  --name apache httpd
docker container logs mysql
docker logs mysql
docker container stop nginx mysql apache
docker container rm nginx mysql apache
```
### Instructors solution
```bash
docker container run -d -p 3306:3306 --name db -e MYSQL_RANDOM_ROOT_PASSWORD=yes MYSQL_RANDOM_ROOT_PASSWORD
docker container logs db
docker container run -d --name webserver -p 8080:80 httpd
docker ps
docker container run -d --name proxy -p 80:80 nginx
docker ps
docker container ls
docker container stop TAB COMPLETION
docker ps -a
docker container ls -a
docker container rm
docker ps -a
docker image ls
```

## What's Going On In Containers: CLI Process Monitoring

```bash
docker container run -d --name nginx nginx
docker container run -d --name mysql -e MYSQL_RANDOM_ROOT_PASSWORD=true mysql
docker container ls
docker container top mysql
docker container top nginx
docker container inspect mysql
docker container stats --help
docker container stats
docker container ls
```

## Getting a Shell Inside Containers: No Need for SSH
```bash
docker container run -help
docker container run -it --name proxy nginx bash
docker container ls
docker container ls -a
docker container run -it --name ubuntu ubuntu
docker container ls
docker container ls -a
docker container start --help
docker container start -ai ubuntu
docker container exec --help
docker container exec -it mysql bash
docker container ls
docker pull alpine
docker image ls
docker container run -it alpine bash
docker container run -it alpine sh
```
## Docker Networks: Concepts for Private and Public Comms in Containers

```bash
docker container run -p 80:80 --name webhost -d nginx
docker container port webhost
docker container inspect --format '{{ .NetworkSettings.IPAddress }}' webhost
```

## Docker Networks: CLI Management of Virtual Networks

```bash
docker network ls
docker network inspect bridge
docker network ls
docker network create my_app_net
docker network ls
docker network create --help
docker container run -d --name new_nginx --network my_app_net nginx
docker network inspect my_app_net
docker network --help
docker network connect
docker container inspect TAB COMPLETION
docker container disconnect TAB COMPLETION
docker container inspect
```
## Docker Networks: DNS and How Containers Find Each Other

```bash
docker container ls
docker network inspect <TAB COMPLETION>
docker container run -d --name my_nginx --network my_app_net nginx
docker container inspect <TAB COMPLETION>
docker container exec -it my_nginx  apt install -y  iputils-ping && ping new_nginx
docker container exec -it new_nginx ping my_nginx
docker network ls
docker container create --help
```

## Assignment Answers: Using Containers for CLI Testing
### Instructors assignment
```bash
docker container run --rm -it centos:7 bash
docker ps -a
docker container run --rm -it ubuntu:14.04 bash
docker ps -a
```

## Assignment Answers: DNS Round Robin Testing
### My assignment
```bash
docker network create --driver bridge prx
docker container run --network prx --network-alias search -itd --name es1 elasticsearch:2
docker container run --network prx --network-alias search -itd --name es2 elasticsearch:2

#Running alpine
docker container run --itd --network prx --name ub ubuntu
docker exec -it sh 
	apt update
	apt install dnsutils
	nslookup search --net
docker contianer run --itd --network prx --name centos centos
docker exec -it centos  bash 
	curl -s seach:9200
	curl -s search:9200
```
### Instructor's assigmnent

```bash
docker network create dude
docker container run -d --net dude --net-alias search elasticsearch:2
docker container ls
docker container run --rm -- net dude alpine nslookup search
docker container run --rm --net dude centos curl -s search:9200
docker container ls
docker container rm -f TAB COMPLETION
```


# Container Images, Where To Find Them and How To Build Them

## The Mighty Hub: Using Docker Hub Registry Images

http://hub.docker.com

```bash
docker image ls
docker pull nginx
docker pull nginx:1.11.9
docker pull nginx:1.11
docker pull nginx:1.11.9-alpine
docker image ls
```

## Images and Their Layers: Discover the Image Cache
```bash
docker image ls
docker history nginx:latest
docker history mysql
docker image inspect nginx
```

## Image Tagging and Pushing to Docker Hub
```bash
docker image tag -- help
docker image ls
docker pull mysql/mysql-server
docker image ls
docker pull nginx:mainline
docker image ls
docker image tag nginx bretfisher/nginx
docker image tag --help
docker image ls
docker image push bretfisher/nginx
docker --help
docker login
cat .docker/config.json
docker image push bretfisher/nginx
docker image push bretfisher/nginx bretfisher/nginx:testing
docker image ls
docker image push bretfisher/nginx:testing
docker image ls
```

## Building Images: The Dockerfile Basics

```bash
cd dockerfile-sample-1
vim Dockerfile
```

## Building Images: Running Docker Builds

```bash
docker image build -t customnginx .
docker image ls
docker image build -t customnginx .
```

## Building Images: Extending Official Images
```bash
cd dockerfile-sample-2
vim Dockerfile
docker container run -p 80:80 --rm nginx
docker image build -t nginx-with-html .
docker container run -p 80:80 --rm nginx-with-html
docker image ls
docker image tag --help
docker image tag nginx-with-html:latest bretfisher/nginx-with-html:latest
docker image ls
docker push
```
## Assignment Answers: Build Your Own Dockerfile and Run Containers From It
```bash
cd dockerfile-assignment-1
vim Dockerfile
docker build cmd
docker build -t testnode .
docker container run --rm -p 80:3000 testnode
docker images
docker tag --help
docker tag testnode bretfisher/testing-node
docker push --help
docker push bretfisher/testing-node
docker image ls
docker image rm bretfisher/testing-node
docker container run --rm -p 80:3000 bretfisher/testing-node
```


# Container Lifetime & Persistent Data: Volumes, Volumes, Volumes

## Persistent Data: Data Volumes
```bash
docker pull mysql
docker image inspect mysql
docker container run -d --name mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=True mysql
docker container ls
docker container inspect mysql
docker volume ls
docker volume inspect TAB COMPLETION
docker container run -d --name2 mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=True mysql
docker volume ls
docker container stop mysql
docker container stop mysql2
docker container ls
docker container ls -a
docker volume ls
docker container rm mysql mysql2
docker volume ls
docker container run -d --name mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=True -v mysql-db:/var/lib/mysql mysql
docker volume ls
docker volume inspect mysql-db
docker container rm -f mysql
docker container run -d --name mysql3 -e MYSQL_ALLOW_EMPTY_PASSWORD=True -v mysql-db:/var/lib/mysql mysql
docker volume ls
docker container inspect mysql3
docker volume create --help
```
## Persistent Data: Bind Mounting

```bash
cd dockerfile-sample-2
pcat Dockerfile
docker container run -d --name nginx -p 80:80 -v $(pwd):/usr/share/nginx/html nginx
docker container run -d --name nginx2 -p 8080:80 nginx
docker container exec -it nginx bash
```
## Assignment Answers: Edit Code Running In Containers With Bind Mounts
```bash
docker run -p 80:4000 -v $(pwd):/site bretfisher/jekyll-serve
```



# Docker Compose: The Multi-Container Tool

## Docker Compose and The Docker-compose.yml File

`docker-compose.yml`
https://docs.docker.com

##  Basic Compose Commands
```bash
pcat docker-compose.yml
docker-compose up
docker-compose up -d
docker-compose logs
docker-compose --help
docker-compose ps
docker-compose top
docker-compose down
```
## Assignment Answers: Build a Compose File for a Multi-Container Service
```bash
docker-compose.yml
docker pull drupal
docker image inspect drupal
docker-compose up
https://hub.docker.com
docker-compose down --help
docker-compose down -v
```
## Adding Image Building to Compose Files
```bash
docker-compose.yml
docker-compose up
docker-compose up --build
docker-compose down
docker image ls
docker-compose down --help
docker image rm nginx-custom
docker image ls
docker-compose up -d
docker image ls
docker-compose down --help
docker-compose down --rmi local
```
## Assignment Answers: Compose for Run-Time Image Building and Multi-Container Dev

```bash
docker-compose up
docker-compose down
docker-compose up
```


# Swarm Cluster

## Create Your First Service and Scale it Locally
```bash
docker info
docker swarm init
docker node ls
docker node --help
docker swarm --help
docker service --help
docker service create alpine ping 8.8.8.8
docker service ls
docker service ps frosty_newton
docker container ls
docker service update TAB COMPLETION --replicas 3
docker service ls
docker service ps frosty_newton
docker update --help
docker service update --help
docker container ls
docker container rm -f frosty_newton.1.TAB COMPLETION
docker service ls
docker service ps frosty_newton
docker service rm frosty_newton
docker service ls
docker container ls
```
## Creating a 3-Node Swarm Cluster
http://play-with-docker.com
```bash
docker info
docker-machine
docker-machine create node1
docker-machine ssh node1
docker-machine env node1
docker info
http://get.docker.com
docker swarm init
docker swarm init --advertise-addr TAB COMPLETION
docker node ls
docker node update --role manager node2
docker node ls
docker swarm join-token manager
docker node ls
docker service create --replicas 3 alpine ping 8.8.8.8
docker service ls
docker node ps
docker node ps node2
docker service ps sleepy_brown
```

## Scaling Out with Overlay Networking
```bash
docker network create --driver overlay mydrupal
docker network ls
docker service create --name psql --netowrk mydrupal -e POSTGRES_PASSWORD=mypass postgres
docker service ls
docker service ps psql
docker container logs psql TAB COMPLETION
docker service create --name drupal --network mydrupal -p 80:80 drupal
docker service ls
watch docker service ls
docker service ps drupal
docker service inspect drupal
```

# Swarm Basic Features and How to Use Them In Your Workflow

## Scaling Out with Overlay Networking
```bash
docker network create --driver overlay mydrupal
docker network ls
docker service create --name psql --network mydrupal -e POSTGRES_PASSWORD=mypass postgres
docker service ls
docker service ps psql
docker container logs psql TAB COMPLETION
docker service create --name drupal --network mydrupal -p 80:80 drupal
docker service ls
watch docker service ls
docker service ps drupal
docker service inspect drupal
```
## Scaling Out with Routing Mesh
```bash
docker service create --name search --replicas 3 -p 9200:9200 elasticsearch:2
docker service ps search
```
## Assignment Answers: Create a Multi-Service Multi-Node Web App
```bash
docker node ls
docker service ls
docker network create -d overlay backend
docker network create -d overlay frontend
docker service create --name vote -p 80:80 --network frontend -- replica 2 COPY IMAGE
docker service create --name redis --network frontend --replica 1 redis:3.2
docker service create --name worker --network frontend --network backend COPY IMAGE
docker service create --name db --network backend COPY MOUNT INFO
docker service create --name result --network backend -p 5001:80 COPY INFO
docker service ls
docker service ps result
docker service ps redis
docker service ps db
docker service ps vote
docker service ps worker
cat /etc/docker/
docker service logs worker
docker service ps worker
```
## Swarm Stacks and Production Grade Compose
```bash
docker stack deploy -c example-voting-app-stack.yml voteapp
docker stack
docker stack ls
docker stack ps voteapp
docker container ls
docker stack services voteapp
docker stack ps voteapp
docker network ls
docker stack deploy -c example-voting-app-stack.yml voteapp
```
## Using Secrets in Swarm Services
```bash
docker secret create psql_usr psql_usr.txt
echo "myDBpassWORD" | docker secret create psql_pass - TAB COMPLETION
docker secret ls
docker secret inspect psql_usr
docker service create --name psql --secret psql_user --secret psql_pass -e POSTGRES_PASSWORD_FILE=/run/secrets/psql_pass -e POSTGRES_USER_FILE=/run/secrets/psql_user postgres
docker service ps psql
docker exec -it psql.1.CONTAINER NAME bash
docker logs TAB COMPLETION
docker service ps psql
docker service update --secret-rm
```
## Using Secrets with Swarm Stacks
```bash
vim docker-compose.yml
docker stack deploy -c docker-compose.yml mydb
docker secret ls
docker stack rm mydb
```
## Assignment Answers: Create A Stack with Secrets and Deploy
```bash
vim docker-compose.yml
docker stack deploy - c docker-compose.yml drupal
echo STRING |docker secret create psql-ps - VALUE
docker stack deploy -c docker-compose.yml drupal
docker stack ps drupal
```

# Swarm App Lifecycle

## Using Secrets With Local Docker Compose
```bash
docker node ls
docker-compose up -d
docker-compose exec psql cat /run/secrets/psql_user
docker-compose 11
pcat docker-compose.yml
```
## Full App Lifecycle: Dev, Build and Deploy With a Single Compose Design
```bash
docker-compose up -d
docker inspect TAB COMPLETION
docker-compose down
docker-compose -f docker-compose.yml -f docker-compose.test.yml up -d
docker inspect TAB COMPLETION
docker-compose -f docker-compose.yml -f docker-compose.prod.yml config --help
docker-compose -f docker-compose.yml -f docker-compose.prod.yml config
docker-compose -f docker-compose.yml -f docker-compose.prod.yml config > output.yml
```

## Service Updates: Changing Things In Flight
```bash
docker service create -p 8088:80 --name web nginx:1.13.7
docker service ls
docker service scale web=5
docker service update --image nginx:1.13.6 web
docker service update --publish-rm 8088 --publish-add 9090:80
docker service update --force web
```
## Healthchecks in Dockerfiles
```bash
docker container run --name p1 -d postgres
docker container ls
docker container run --name p2 -d --health-cmd="pg_isready -U postgres || exit 1" postgres
docker container ls
docker container inspect p2
docker service create --name p1 postgres
docker service create --name p2 --health-cmd="pg_isready -U postgres || exit 1" postgres
```


# Container Registries: Image Storage and Distribution

## Docker Hub: Digging Deeper

https://hub.docker.com

## Docker Store: What Is It For?

https://store.docker.com

## Docker Cloud: CI/CD and Server Ops

https://cloud.docker.com

https://hub.docker.com

## Understanding Docker Registry

https://github.com/docker/distribution

https://hub.docker.com/registry

## Run a Private Docker Registry
```bash
docker container run -d -p 5000:5000 --name registry registry
docker container ls
docker image ls
docker pull hello-world
docker run hello-world
docker tag hello-world 127.0.0.1:5000/hello-world
docker image ls
docker push 127.0.0.1:5000/hello-world
docker image remove hello-world
docker image remove 127.0.0.1:5000/hello-world
docker container rm admiring_stallman
docker image remove 127.0.0.1:5000/hello-world
docker image ls
docker pull 127.0.0.1:5000/hello-world:latest
docker container kill registry
docker container rm registry
docker container run -d -p 5000:5000 --name registry -v $(pwd)/registry-data:/var/lib/registry registry TAB COMPLETION
docker image ls
docker push 127.0.0.1:5000/hello-world
```
## Using Docker Registry With Swarm

http://play-with-docker.com

```bash
docker node ls
docker service create --name registry --publish 5000:5000 registry
docker service ps registry
docker pull hello-world
docker tag hello-world 127.0.0.1:5000/hello-world
docker push 127.0.0.1:5000/hello-world
docker pull nginx
docker tag nginx 127.0.0.1:5000/nginx
docker push 127.0.0.1:5000/nginx
docker service create --name nginx -p 80:80 --replicas 5 --detach=false 127.0.0.1:5000/nginx
docker service ps nginx
```