FROM sbeliakou/centos:6.7
MAINTAINER Anton Tkachenka (anton_tkachenka@epam.com)
VOLUME /opt/tomcat/webapps 
ADD resources/sample.war /opt/tomcat/webapps/
CMD sleep infinity

