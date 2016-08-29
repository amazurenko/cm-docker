MTN.*NIX.11 Automated Environment Configuration Management
---

***Student***: Roman_Kalinyuk

[Roman_Kalinyuk] (https://epa.ms/1Cqq0e) Docker Home Task
---

Using base docker image ***sbeliakou/centos:6.7***

1. Wiht ```Dockerfiles```:
    - Create Docker Image of ```nginx``` ([web.Dockerfile](/web.Dockerfile))
    - Create Docker Image of ```Tomcat 7``` ([tomcat.Dockerfile](/tomcat.Dockerfile))
    - Create Docker Image (Data Volume) with [```hello world```](https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war) application for Tomcat ([application.Dockerfile](application.Dockerfile))
    - Run these Images so that [http://localhost/sample](http://localhost/sample) shows ```hello world``` page
    - ```Nginx``` container forwards http requests to ```Tomcat``` container; Only ```nginx``` container exposes port (80)
2. With ```docker-compose```:
    - Create ```docker-compose.yml``` file to build containers from previos task
    - Run "environment" in daemon mode
3. Create own branch (epam login without @epam.com, in lowercase)
4. Create PR with description of reported task
5. All needed changes (additional configuration/installations) on "Host" must be added into [Vagrantfile](/Vagrantfile)
6. All needed resources (if they are) must be placed into ```/resources``` folder

Task Report Notes
---
*All stuff must be provided in this section

mkdir docker
cd docker/
git init
git clone https://github.com/MNTLab/cm-docker.git
cd mntlab-docker/
vi README.md 
git checkout -b roman_kalinyuk
git commit -a
git push -u origin roman_kalinyuk

VBoxManage --version
sudo /sbin/rcvboxdrv setup
VBoxManage --version
5.0.26r108824

vagrant up
vagrant ssh

cat /etc/os-release 
NAME="CentOS Linux"
VERSION="7 (Core)"

[vagrant@epplkraw0166t2 ~]$ docker --version
Docker version 1.11.2-cs4, build 7d4e626

docker build -t tomcat -f tomcat.Dockerfile .
[vagrant@epplkraw0166t2 ~]$ curl -IL 172.17.0.2:8080
HTTP/1.1 200 OK
Server: Apache-Coyote/1.1
Content-Type: text/html;charset=ISO-8859-1
Transfer-Encoding: chunked
Date: Mon, 29 Aug 2016 15:12:18 GMT


docker build -t nginx -f web.Dockerfile .
[vagrant@epplkraw0166t2 ~]$ docker exec -i -t 4ad24d4b6327b96b1347e9e5f40514044b01cb7335e8e9349bc68b920079b730 bash
[root@4ad24d4b6327 /]# curl -IL 172.17.0.3:80
HTTP/1.1 200 OK
Server: nginx/1.0.15
Date: Mon, 29 Aug 2016 15:46:55 GMT

docker build -t application -f application.Dockerfile .


[vagrant@epplkraw0166t2 ~]$ docker images

REPOSITORY        | TAG              | IMAGE ID           | CREATED             | SIZE
------------------|------------------|--------------------|---------------------|-------
application       | latest           | 3449020e55be       | About a minute ago  | 467.5 MB
nginx             | latest           | 5c4cd3974539       | 30 minutes ago      | 603.8 MB
tomcat            | latest           | af9a430de56b       | About an hour ago   | 775.7 MB
sbeliakou/centos  | 6.7              | 600797452381       | 3 months ago        | 383.7 MB

![Git_Web_Push](https://github.com/MNTLab/cm-docker/blob/roman_kalinyuk/resources/1_Git_Web_Push)
