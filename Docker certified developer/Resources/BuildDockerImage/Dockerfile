FROM ubuntu:latest
LABEL maintainer="asahicantu@mail.com"
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y nginx
COPY index.html /data/www/index.html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80