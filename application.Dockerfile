FROM sbeliakou/centos:6.7
MAINTAINER Roman Kalinyuk (Rooman_Kalinyuk@epam.com)
RUN yum install -y wget 
RUN wget https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war -P /opt/tomcat/webapps/
VOLUME /opt/tomcat/webapps/
CMD sleep infinity
