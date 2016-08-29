FROM sbeliakou/centos:6.7
MAINTAINER Roman Kalinyuk (Rooman_Kalinyuk@epam.com)
RUN yum install -y nginx
EXPOSE 80 8080
CMD nginx -g "daemon off;"
