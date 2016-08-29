FROM sbeliakou/centos:6.7

MAINTAINER Aleksandr Frantskevitch (aleksandr_frantskevitch@epam.com)

RUN yum install -y nginx

RUN rm -rf /etc/nginx/conf.d/default.conf

ADD ./resources/default.conf /etc/nginx/conf.d/

EXPOSE 80:80

ENTRYPOINT nginx -g 'daemon off;'   
