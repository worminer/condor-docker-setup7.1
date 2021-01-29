FROM mysql:8

ARG MYSQL_CONTAINER_USER
ARG MYSQL_CONTAINER_GROUP
ARG MYSQL_CONF_D_DIR
ARG MYSQL_DATA_CUSTOM_CNF

RUN ["apt", "update"]
RUN ["apt", "install", "-y", "nano"]

#RUN sed -i "s/#log-error/log-error/g" '/usr/share/mysql-8.0/mysql-log-rotate'
#RUN sed -i "s/# log-error/log-error/g" '/usr/share/mysql-8.0/mysql-log-rotate'
COPY ./custom.cnf /etc/mysql/conf.d/custom.cnf
RUN chmod 0444 /etc/mysql/conf.d/custom.cnf
# set priviliges
RUN usermod -u 1000 ${MYSQL_CONTAINER_USER} \
 && groupmod -g 1000 ${MYSQL_CONTAINER_GROUP}
