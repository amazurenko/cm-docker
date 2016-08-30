# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "sbeliakou/centos-7.2-x86_64"
  config.vm.network "forwarded_port", guest: 80, host: 8084
  config.vm.provision "shell", inline: <<-SHELL
    rpm --import "https://sks-keyservers.net/pks/lookup?op=get&search=0xee6d536cf7dc86e2d7d56f59a178ac6c6238f52e"
    yum update -y
    yum install -y yum-utils python-pip.noarch
    yum-config-manager --add-repo https://packages.docker.com/1.11/yum/repo/main/centos/7
    yum install -y docker-engine
    pip install docker-compose docker-py 
    usermod -a -G docker vagrant
    systemctl enable docker.service
    systemctl start docker.service
    mkdir /home/vagrant/docker && cp -R /vagrant/resources/ /home/vagrant/docker/
    cd /vagrant/ && cp *.Dockerfile *.yml /home/vagrant/docker/
    cd /home/vagrant/docker/ 
    docker-compose up -d
    sleep 10
    curl -IL http://localhost/sample/
    
  SHELL

end
