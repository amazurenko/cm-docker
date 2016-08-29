FROM sbeliakou/centos:6.7
MAINTAINER yauheni likhachou (yauheni_likhachou2@epam.com)
RUN yum install -y nginx
ADD resources/def.conf /etc/nginx/conf.d/
EXPOSE 80
CMD nginx -g "daemon off;"
