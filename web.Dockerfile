FROM sbeliakou/centos:6.7
MAINTAINER Aliaksei Khurhin (aliaksei_khurhin@epam.com)
RUN yum install -y nginx && \
yum clean all
ADD resources/default.conf /etc/nginx/conf.d/
EXPOSE 80
ENTRYPOINT ["nginx"] 
CMD [ "-g", "daemon off;" ]
