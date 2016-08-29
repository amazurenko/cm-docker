FROM sbeliakou/centos:6.7

MAINTAINER Siarhei Beliakou (siarhei_beliakou@epam.com)

RUN yum -y install java-1.7.0-openjdk tomcat tomcat-webapps tomcat-admin-webapps

CMD tomcat start && sleep infinity

