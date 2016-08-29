FROM sbeliakou/centos:6.7
MAINTAINER Yauhen Mihura (yauhen_mihura@epam.com)

# Install prepare infrastructure
RUN yum -y install wget && \
    yum -y install tar

# Download *.war
RUN wget https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war -P /opt/tomcat/webapps
VOLUME /opt/tomcat/webapps
CMD sleep infinity
