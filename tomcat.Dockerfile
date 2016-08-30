FROM sbeliakou/centos:6.7
MAINTAINER Aliaksei Khurhin (aliaksei_khurhin@epam.com)
ENV CATALINA_HOME /opt/tomcat
ENV PATH $PATH:$CATALINA_HOME/bin
RUN yum install -y wget tar java-1.7.0 && \
yum clean all
RUN wget http://apache-mirror.rbc.ru/pub/apache/tomcat/tomcat-7/v7.0.70/bin/apache-tomcat-7.0.70.tar.gz && \
tar -xvf apache-tomcat-7.0.70.tar.gz && \
rm apache-tomcat*.tar.gz && \
mv apache-tomcat* ${CATALINA_HOME} && \
chmod +x ${CATALINA_HOME}/bin/*sh
ENTRYPOINT catalina.sh run
