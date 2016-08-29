FROM sbeliakou/centos:6.7
MAINTAINER evgeniy_krupen "evgeniy_krupen@epam.com"
RUN yum install -y nginx
ADD resources/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]




