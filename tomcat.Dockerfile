From sbeliakou/centos:6.7

MAINTAINER Aleksandr Frantskevitch (aleksandr_frantskevitch@epam.com)

RUN yum install -y tomcat

EXPOSE 8080

ENTRYPOINT tomcat start  && tail -f /var/log/tomcat/catalina.out




