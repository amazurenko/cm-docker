FROM sbeliakou/centos:6.7
MAINTAINER Andrei Kachan (andrei_kachan@epam.com)
RUN yum install -y nginx
COPY resources/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
