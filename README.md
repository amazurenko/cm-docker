MTN.*NIX.11 Automated Environment Configuration Management
---

***Student***: Mikalai Charopkin 

Home Task
---

Using base docker image ***sbeliakou/centos:6.7***

1. Wiht ```Dockerfiles```:
    - Create Docker Image of ```nginx``` ([web.Dockerfile](/web.Dockerfile))
    - Create Docker Image of ```Tomcat 7``` ([tomcat.Dockerfile](/tomcat.Dockerfile))
    - Create Docker Image (Data Volume) with [```hello world```](https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war) application for Tomcat ([application.Dockerfile](application.Dockerfile))
    - Run these Images so that [http://localhost:8080/sample](#screen) shows ```hello world``` page
2. With ```docker-compose```:
    - Create [```docker-compose.yml```](#docker-compose) file to build containers from previos task
    - Run "environment" in daemon mode
3. Create own branch (epam login without @epam.com, in lowercase)
4. Create PR with description of reported task
5. All needed changes (additional configuration/installations) on "Host" must be added into [Vagrantfile](/Vagrantfile)
6. All needed resources (if they are) must be placed into ```/resources``` folder

Task Report Notes
---
*All stuff must be provided in this section

Sample app up and running:

<a id="screen"></a>
![(site is up and running)](/resources/1.png)

![(site is up and running)](/resources/2.png)

<a id="docker-compose"></a>With docker-compose:

![(docker-compose)](/resources/3.png)
