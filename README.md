MTN.*NIX.11 Automated Environment Configuration Management
---

***Student***: Hleb_Skuratau

***Link*** : https://upsa.epam.com/workload/employeeView.do?employeeId=4060741400038713235

***Branch_link*** : https://github.com/MNTLab/cm-docker/tree/Hleb_Skuratau

Home Task
---

Using base docker image ***sbeliakou/centos:6.7***

1. Wiht ```Dockerfiles```:
    - Create Docker Image of ```nginx``` ([web.Dockerfile](/web.Dockerfile))
    - Create Docker Image of ```Tomcat 7``` ([tomcat.Dockerfile](/tomcat.Dockerfile))
    - Create Docker Image (Data Volume) with [```hello world```](https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war) application for Tomcat ([application.Dockerfile](application.Dockerfile))

    **all related information with my actions is mirrored in configs**

   - Run these Images so that ![http://localhost/sample](#anchors-in-markdown) 
   - [curl image] (/resources/Screenshot-2.png)  shows ```hello world``` page
   - ```Nginx``` container forwards http requests to ```Tomcat``` container; Only ```nginx``` container exposes port (80)

    **Start containers**

docker build -t application -f application.Dockerfile .
docker run -d --name application application
docker build -t tomcat -f tomcat.Dockerfile .
docker run -d --volumes-from application --name tomcat tomcat
docker build -t web -f web.Dockerfile .
docker run -d -p 127.0.0.1:80:80 --link tomcat:tomcat --name nginx web


2. With ```docker-compose```:

   **installing**

yum install -y python-pip
pip install docker-compose docker-py

    - Create ```docker-compose.yml``` file to build containers from previos task
    - Run "environment" in daemon mode
    
(![screen with start](/resources/Screenshot.png))

3. Create own branch (epam login without @epam.com, in lowercase)

    **created**
    
4. Create PR with description of reported task

    **created**
    
5. All needed changes (additional configuration/installations) on "Host" must be added into [Vagrantfile](/Vagrantfile)

    **according with your instructure, Vagrant file was left in the original state**
    
6. All needed resources (if they are) must be placed into ```/resources``` folder

Task Report Notes
---
*All stuff must be provided in this section

#anchors-in-markdown
[large-screen]:(/resources/Screenshot-3.png)
