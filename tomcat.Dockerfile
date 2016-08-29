FROM sbeliakou/centos:6.7
MAINTAINER Aliaksei Khurhin (aliaksei_khurhin@epam.com)
ENV JAVA_HOME /opt/java
ENV CATALINA_HOME /opt/tomcat
ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/bin:$CATALINA_HOME/scripts
RUN yum install -y wget tar
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jdk-7u71-linux-x64.tar.gz && \
tar -xvf jdk-7u71-linux-x64.tar.gz && \
rm jdk*.tar.gz && \
mv jdk* ${JAVA_HOME} 
RUN wget http://apache-mirror.rbc.ru/pub/apache/tomcat/tomcat-7/v7.0.70/bin/apache-tomcat-7.0.70.tar.gz && \
tar -xvf apache-tomcat-7.0.70.tar.gz && \
rm apache-tomcat*.tar.gz && \
mv apache-tomcat* ${CATALINA_HOME}
RUN chmod +x ${CATALINA_HOME}/bin/*sh
CMD ["catalina.sh", "run"]
