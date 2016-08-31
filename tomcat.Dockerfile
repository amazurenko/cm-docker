FROM sbeliakou/centos:6.7 

RUN yum install -y wget tar \

#intall java
&& mkdir -p /opt/oracle/java && cd /opt/oracle/java \
&&wget --no-cookies --no-check-certificate --header "Cookie: gpw_e25=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u91-b14/jdk-8u91-linux-x64.tar.gz" \
&& tar xvfz jdk-8u91-linux-x64.tar.gz \
&& rm -f jdk-8u91-linux-x64.tar.gz \
&& ln -s /opt/oracle/java/jdk1.8.0_91/ /opt/oracle/java/current \

#install tomcat
&& mkdir -p /opt/apache/tomcat/ && cd /opt/apache/tomcat/ \
&& wget http://ftp.byfly.by/pub/apache.org/tomcat/tomcat-7/v7.0.70/bin/apache-tomcat-7.0.70.tar.gz \
&& tar xvfz apache-tomcat-7.0.70.tar.gz \
&& rm -f apache-tomcat-7.0.70.tar.gz \
&& ln -s /opt/apache/tomcat/apache-tomcat-7.0.70/ /opt/apache/tomcat/current \
&& echo "JAVA_HOME=/opt/oracle/java/current/" > /opt/apache/tomcat/current/bin/setenv.sh \
&& chmod +x /opt/apache/tomcat/current/bin/*.sh \

#remove packages
&& yum erase -y wget tar \
&& yum clean all

# run 
ENTRYPOINT ["/opt/apache/tomcat/current/bin/catalina.sh"]
CMD ["run"]

