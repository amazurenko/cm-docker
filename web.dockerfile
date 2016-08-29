FROM sbeliakou/centos:6.7
MAINTAINER USemiankou
RUN yum install -y nginx
COPY resources/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD nginx -g 'daemon off;'
