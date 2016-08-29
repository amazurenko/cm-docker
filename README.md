MTN.*NIX.11 Automated Environment Configuration Management
---

***Student***: Yaraslau Karotkin 

Home Task
---

Using base docker image ***sbeliakou/centos:6.7***

1. Wiht ```Dockerfiles```:
    - Create Docker Image of ```nginx``` ([web.Dockerfile](https://github.com/MNTLab/cm-docker/blob/yaraslau_karotkin/web.Dockerfile))
    - Create Docker Image of ```Tomcat 7``` ([tomcat.Dockerfile](https://github.com/MNTLab/cm-docker/blob/yaraslau_karotkin/tomcat.Dockerfile))
    - Create Docker Image (Data Volume) with [```hello world```](https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war) application for Tomcat ([application.Dockerfile](https://github.com/MNTLab/cm-docker/blob/yaraslau_karotkin/application.Dockerfile))
    - Run these Images so that [http://localhost/sample](http://localhost/sample) shows ```hello world``` page
    - ```Nginx``` container forwards http requests to ```Tomcat``` container; Only ```nginx``` container exposes port (80)
2. With ```docker-compose```:
    - Create ```docker-compose.yml```([docker-compose.yml](https://github.com/MNTLab/cm-docker/blob/yaraslau_karotkin/docker-compose.yml)) file to build containers from previos task
    - Run "environment" in daemon mode
3. Create own branch (epam login without @epam.com, in lowercase)
4. Create PR with description of reported task
5. All needed changes (additional configuration/installations) on "Host" must be added into [Vagrantfile](https://github.com/MNTLab/cm-docker/blob/yaraslau_karotkin/Vagrantfile)
6. All needed resources (if they are) must be placed into ```/resources```[/resources](https://github.com/MNTLab/cm-docker/tree/yaraslau_karotkin/resources) folder

Task Report Notes
---
The alogithm of task implementation.

1. Before authomatization we have to excercise to create all docker files by ourself (ad-hoc). And check them out, to see how it works.
2. It was started with nginx creation and constistent implemention of web.Dockerfile. We've defined at RUN section installation of nginx by yum install. And listen 80 port at EXPOSE block. Block CMD nginx -g "daemon off;" means to turn on nginx at once. We can check the proper work of box after building and running the nginx image. By docker ps we can see that box already work and we can check that nginx is started by curl -IL 127.0.0.1:80
3. After we have to deploy application server. Primary steps are downloading and installing wget, tar, jdk 1.7.0, tomcat 7 - and point on JAVA_HOME nad CATALINA_HOME. After we set up port 8080 at EXPOSE block, and CMD ["catalina.sh", "run"] means to run tomcat. We can check it after building and running of tomcat.Dockerfile 
