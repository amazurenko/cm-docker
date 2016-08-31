FROM sbeliakou/centos:6.7 

RUN yum install -y wget \
&& mkdir -p /opt/apache/tomcat/current/webapps/ \
&& cd /opt/apache/tomcat/current/webapps/ \
&& wget --no-check-certificate https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war \
&& yum erase -y wget \
&& yum clean all

VOLUME ["/opt/apache/tomcat/current/webapps/"]

CMD ["sleep", "infinity"]
