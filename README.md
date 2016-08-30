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
    - Run these Images so that [http://localhost/](https://github.com/MNTLab/cm-docker/blob/yaraslau_karotkin/resources/helloworld.png) shows ```hello world``` page
    - ```Nginx``` container forwards http requests to ```Tomcat``` container; Only ```nginx``` container exposes port (80)
    - ![alt tag](https://github.com/MNTLab/cm-docker/blob/yaraslau_karotkin/resources/images.png)
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
3. After we have to deploy application server. Primary steps are downloading and installing wget, tar, jdk 1.7.0, tomcat 7 - and point on JAVA_HOME nad CATALINA_HOME. After we set up port 8080 at EXPOSE block, and CMD ["catalina.sh", "run"] means to run tomcat. We can check it after building and running of tomcat.Dockerfile that tomcat is listen on 127.0.0.1:8080.
4. For now we have to create box which deploys application to tomcat. We've to install wget and download an application and set special VOLUME to upload an application here. VOLUME /opt/tomcat/webapps/ is set.
5. After we have to turn off all boxes which already have been work. So we were test the building and running of application and web servers. We have to remove/clean these boxes to set up and deploy an application. docker rm $(docker ps -a -q)
docker images and after docker rmi -f "tomcat_container nginx_container".
6. For now we have to use consistent set of actions to deploy an application. At first we updated our web.Dockerfile with 
ADD resources/default.conf /etc/nginx/conf.d/default.conf block that puts new config to our nginx. After we were build our 3 files one by one. [#docker build -t nginx_container -f web.Dockerfile .][#docker build -t tomcat_container -f tomcat.Dockerfile .][#docker build -t application_container -f application.Dockerfile .][docker run -d --name application application_container][
docker run -d -p 8080:8080 --link tomcat:tomcat --volumes-from application --name tomcat tomcat_container][docker run -d -p 80:80 --name nginx nginx_container]
7. After we can check by curl -IL 127.0.0.1 and see that 200 OK and Hello World works! Because there is a line in a config file which redirects http://tomcat:8080/sample/ to http://127.0.0.1
![alt tag](https://github.com/MNTLab/cm-docker/blob/yaraslau_karotkin/resources/curlhw.png)
8. We can see that everything is work. And This is the time to create automatical deployment of docker files which rise up nginx, tomcat and deploy an application. We were created docker-compose.yml file and set dependencies APPLICATION build -->> TOMCAT SET -->> NGINX SET. After we can check the that the application is work.
9. After we've configured commutation between vagrant and host and check our tomcat at 192.168.33.2 
![alt tag](https://github.com/MNTLab/cm-docker/blob/yaraslau_karotkin/resources/helloworld.png)

