FROM httpd:2.4

ARG WEB_USER
ARG WEB_GROUP
ARG APACHE_ROOT_DIR

# Copy configuration files into apache dir
COPY config/000-default.conf ${APACHE_ROOT_DIR}/conf/extra/httpd-vhosts.conf
COPY config/httpd.conf ${APACHE_ROOT_DIR}/conf/httpd.conf

RUN chgrp -R ${WEB_GROUP} ${APACHE_ROOT_DIR}/conf/httpd.conf && \
    chgrp -R ${WEB_GROUP} ${APACHE_ROOT_DIR}/conf/extra/httpd-vhosts.conf && \
    usermod -u 1000 ${WEB_USER} && \
    groupmod -g 1000 ${WEB_GROUP} && \
    chgrp -R ${WEB_GROUP} ${APACHE_ROOT_DIR}