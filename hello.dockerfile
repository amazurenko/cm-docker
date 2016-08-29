FROM sbeliakou/centos:6.7
MAINTAINER UladzimirSemiankou
VOLUME /opt/tomcat/webapps/
ADD resources/sample.war /opt/tomcat/webapps/
CMD sleep infinity
