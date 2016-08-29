FROM sbeliakou/centos:6.7

MAINTAINER Siarhei Beliakou (siarhei_beliakou@epam.com)

RUN yum install -y nginx
ADD resources/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD nginx -g 'daemon off;'

