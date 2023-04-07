FROM mysql:5.7.29
VOLUME /var/data/mysql
COPY ./setup.sql /docker-entrypoint-initdb.d/
EXPOSE 3306
cmd ["mysqld"]
