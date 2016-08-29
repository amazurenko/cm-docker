FROM sbeliakou/centos:6.7
MAINTAINER Yaraslau Karotkin (yaraslau_karotkin@epam.com)
RUN yum install -y nginx
ADD resources/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD nginx -g "daemon off;"

