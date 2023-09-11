```Dockerfile
# Author of dockerfile
MAINTAINER
# Defines a variable that users can pass at buil-time using --build-arg <var_bane>=<value>. Can include default value
ARG CODE_VERSION=latest
# Specifies the base image from which to build any docker. Can be precedede by oner or mor ARG instructions. Can appear multiple times in a single Dockerfile
FROM base:${CODE_VERSION}
#Executes a command in a new layer on top of the current image and commits the results
# The new image willb e parent image for the next step in the Dockerfile
RUN apt-get update
RUN apt-get install -y ningx
RUN <shell command> <param1> <param2>
RUN ["executable", "param1", "param2"]
#Provides defaults for an executing container Specifies the command to run when a container is launched
#When used with ENTRYPOINT CMD provides the default parameters
#There can only be ONE CMD Instruction in a Dockerfile
CMD <shell command> <param1> <param2>
CMD ["executable", "param1", "param2"]
## Sets the command and parameters that will be executed fgirst when a container is run
## Command line arguments passed with docker run append the ENTRYPOINT and override the CMD elements in the Dockerfile
# There can only be one ENTRYPOINT instruction in a Dockerfile
ENTRYPOINT <command> <param1> <param2>
ENTRYPOINT ["executable", "param1", "param2"]
# Set environment variables one or more
ENV KEY=VALUE
#Set working directory for the container. Set of instrutions which follow it. Can be used multiple times
WORKDIR
# Copies files/folder from local directory and adds them to the container at the path <dest>
# Containes special features like uncompression for files and remote urls 
ADD [source directory] [target directory]
ADD <source file> <target file>
ADD latest.tar.gz /var/www/wordpress
# Copies new files or directories from <src> and adds them to the filesystem of the container at the path <dest>
# 
COPY [source directory] [target directory]
COPY conf.d/ /etc/apache2/

#Specify the port to listen to
EXPOSE
# Sets user id (uid) or username when running the image
USER
#Creates a mount poiont
VOLUME

```