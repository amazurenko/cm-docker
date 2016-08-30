MTN.*NIX.11 Automated Environment Configuration Management
---

***Student***: [Uladzislau Charches](https://upsa.epam.com/workload/employeeView.do?employeeId=4060741400038705754#emplTab=general)

Home Task
---

Using base docker image ***sbeliakou/centos:6.7***

1. Wiht ```Dockerfiles```:
    - Created Docker Image of ```nginx``` ([web.Dockerfile](/web.Dockerfile))
    - Created Docker Image of ```Tomcat 7``` ([tomcat.Dockerfile](/tomcat.Dockerfile))
    - Created Docker Image (Data Volume) with [```hello world```](https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war) application for Tomcat ([application.Dockerfile](application.Dockerfile))
    - Run these Images so that [http://localhost/sample](/resources/Screenshot-2.png) shows ```hello world``` page
    - ```Nginx``` container forwards http requests to ```Tomcat``` container; Only ```nginx``` container exposes port (80)
2. With ```docker-compose```:
    - Created [```docker-compose.yml```](https://github.com/MNTLab/cm-docker/blob/uladzislau_charches/docker-compose.yml) file to build containers from previos task
    - Run "environment" in daemon mode
3. Created own branch (epam login without @epam.com, in lowercase)
4. Created PR with description of reported task
5. All needed changes (additional configuration/installations) on "Host" must be added into [Vagrantfile](/Vagrantfile)
6. All needed resources (if they are) must be placed into ```/resources``` folder

Task Report Notes
---
*All stuff must be provided in this section

[Here link to my branch](https://github.com/MNTLab/cm-docker/commits/uladzislau_charches) 
