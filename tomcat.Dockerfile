FROM sbeliakou/centos:6.7
MAINTAINER Dzmitry Pasiukevich (dzmitry_pasiukevich@epam.com)
RUN yum install -y java-1.7.0-openjdk-devel wget tar
RUN wget http://ftp.byfly.by/pub/apache.org/tomcat/tomcat-8/v8.5.4/bin/apache-tomcat-8.5.4.tar.gz
RUN mkdir -p /opt/tomcat
RUN tar xvf apache-tomcat-8.5.4.tar.gz -C /opt/tomcat --strip-components=1
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
