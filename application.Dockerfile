FROM sbeliakou/centos:6.7
MAINTAINER Yaraslau Karotkin (yaraslau_karotkin@epam.com)
VOLUME /opt/tomcat/webapps/
ADD https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war /opt/tomcat/webapps/
CMD sleep infinity


