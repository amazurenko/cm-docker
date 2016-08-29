FROM sbeliakou/centos:6.7
MAINTAINER USemiankou
RUN yum install -y java-1.7.0-openjdk-devel wget tar
RUN wget http://ftp.byfly.by/pub/apache.org/tomcat/tomcat-7/v7.0.70/bin/apache-tomcat-7.0.70.tar.gz
RUN mkdir -p /opt/tomcat
RUN tar xvf apache-tomcat-7.0.70.tar.gz -C /opt/tomcat --strip-components=1
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
