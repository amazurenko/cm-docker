FROM sbeliakou/centos:6.7 

ADD resources/nginx.repo /etc/yum.repos.d/
RUN yum install -y nginx 

ADD resources/nginx.conf /etc/nginx

ENTRYPOINT ["nginx"]

