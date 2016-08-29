# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "sbeliakou/centos-7.2-x86_64"
  config.vm.network :forwarded_port, host: 80, guest: 80
	
  config.vm.provision "shell", inline: <<-SHELL
    rpm --import "https://sks-keyservers.net/pks/lookup?op=get&search=0xee6d536cf7dc86e2d7d56f59a178ac6c6238f52e"
#    yum update -y
    yum install -y yum-utils
    yum-config-manager --add-repo https://packages.docker.com/1.11/yum/repo/main/centos/7
    yum install -y docker-engine
    usermod -a -G docker vagrant
    systemctl enable docker.service
    systemctl start docker.service
	yum install -y python-pip.noarch
	pip install docker-compose docker-py
	mkdir /home/vagrant/docker/
	cd /vagrant
	cp -R resources/ /home/vagrant/docker/
	cp *.Dockerfile *.yml /home/vagrant/docker/
	cd /home/vagrant/docker/
	docker-compose up -d
#	curl -IL localhost/sample/
  SHELL

end
