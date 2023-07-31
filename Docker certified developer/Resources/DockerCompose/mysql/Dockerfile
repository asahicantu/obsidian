FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD=admin123
ADD dbinit.sql /docker-entrypoint-initdb.d
EXPOSE 3306
CMD ["mysqld"]