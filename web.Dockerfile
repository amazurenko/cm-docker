FROM sbeliakou/centos:6.7
RUN yum install -y nginx
EXPOSE 80
ADD resources/default.conf /etc/nginx/conf.d/
CMD ["nginx", "-g", "daemon off;"]

