MTN.*NIX.10 Automated Environment Configuration Management
---

***Student***: [Uladzimir_Semiankou](https://upsa.epam.com/workload/employeeView.do?employeeId=4060741400038669535#emplTab=general)

Home Task
---

Using base docker image ***sbeliakou/centos:6.7***

1. With ```Dockerfiles```:
    - Create Docker Image of ```nginx``` ([web.dockerfile](/web.dockerfile))
    - Create Docker Image of ```Tomcat 7``` ([app.dockerfile](/app.dockerfile))
    - Create Docker Image (Data Volume) with [```hello world```](/resources/sample.war) application for Tomcat ([hello.dockerfile](/hello.dockerfile))
    - Run these Images so that [http://localhost:8080/sample](#screens) shows ```hello world``` page
2. With ```docker-compose```:
    - Create [```docker-compose.yml```](/docker-compose.yml) file to build containers from previos task
    - Run "environment" in daemon mode
3. Create own branch (epam login without @epam.com, in lowercase)
4. Create PR with description of reported task
5. All needed changes (additional configuration/installations) on "Host" must be added into [Vagrantfile](/Vagrantfile)
6. All needed resources (if they are) must be placed into [```/resources```](/resources) folder

(#screens)Screenshots:
- ```Curl```:
![myimage-alt-tag](/resources/curl.jpg)

- ```Browser```:
![myimage-alt-tag](/resources/browser.jpg)
