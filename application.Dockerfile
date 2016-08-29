FROM sbeliakou/centos:6.7

MAINTAINER Aleksandr Frantskevitch (aleksandr_frantskevitch@epam.com)

VOLUME /var/lib/tomcat/webapps

ADD https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war /var/lib/tomcat/webapps/

ENTRYPOINT sleep infinity

