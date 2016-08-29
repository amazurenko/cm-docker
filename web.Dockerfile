FROM sbeliakou/centos:6.7
MAINTAINER Anton Tkachenka (anton_tkachenka@epam.com)
RUN yum install -y nginx
RUN rm -rf /etc/nginx/conf.d/default.conf
ADD resources/default.conf /etc/nginx/conf.d/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
