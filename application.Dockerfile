FROM sbeliakou/centos:6.7

MAINTAINER Siarhei Beliakou (siarhei_beliakou@epam.com)

RUN yum install -y wget.x86_64 && \
		mkdir -p /usr/share/tomcat/webapps && \
		cd /usr/share/tomcat/webapps && \
		wget https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war
VOLUME /usr/share/tomcat/webapps	

CMD sleep infinity

