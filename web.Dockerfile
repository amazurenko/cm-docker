FROM sbeliakou/centos:6.7
MAINTAINER Yahen Mihura (yauhn_mihura@epam.com)

# Install Nginx with custom conf
RUN yum install -y nginx
COPY resources/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
