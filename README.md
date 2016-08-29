MTN.*NIX.10 Automated Environment Configuration Management
---

***Student***: ```Aliaksandr Karavai``` ([Aliaksandr Karavai](https://upsa.epam.com/workload/employeeView.do?employeeId=4060741400038663763#emplTab=general))

Home Task
---

Using base docker image ***sbeliakou/centos:6.7***

1. Wiht ```Dockerfiles```:
    - Create Docker Image of ```nginx``` ([web.Dockerfile](/web.Dockerfile))
    - Create Docker Image of ```Tomcat 7``` ([tomcat.Dockerfile](/tomcat.Dockerfile))
    - Create Docker Image (Data Volume) with [```hello world```](https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war) application for Tomcat ([application.Dockerfile](application.Dockerfile))
    - Run these Images so that [http://localhost:8080/sample](http://localhost:8080/sample) shows ```hello world``` page
2. With ```docker-compose```:
    - Create ```docker-compose.yml``` file to build containers from previos task
    - Run "environment" in daemon mode
3. Create own branch (epam login without @epam.com, in lowercase)
4. Create PR with description of reported task
5. All needed changes (additional configuration/installations) on "Host" must be added into [Vagrantfile](/Vagrantfile)
6. All needed resources (if they are) must be placed into ```/resources``` folder

Task Report Notes
---

Application is available via brovser on localhost - port on host mashine:8084 and forwarded in Vagrantfile (vagrant started from non privileged user):

![image](https://github.com/MNTLab/cm-docker/blob/aliaksandr_karavai/resources/worked.png "Figure 1. Running application")

Curl response from virtual mashine and created containers:

![image](https://github.com/MNTLab/cm-docker/blob/aliaksandr_karavai/resources/docker_run.png "Figure 2. CURL response")
