Vagrant.configure(2) do |config|

        config.vm.hostname = "centos"
        config.vm.box = "sbeliakou/centos-7.2-x86_64"
 config.vm.network "forwarded_port", guest: 8080, host: 8080
 config.vm.network :private_network, ip: "192.168.56.101"
 config.vm.provision "shell", inline: <<-SHELL
    rpm --import "https://sks-keyservers.net/pks/lookup?op=get&search=0xee6d536cf7dc86e2d7d56f59a178ac6c6238f52e"
    yum update -y
    yum install -y yum-utils
    yum-config-manager --add-repo https://packages.docker.com/1.11/yum/repo/main/centos/7
    yum install -y docker-engine
    usermod -a -G docker vagrant
    systemctl enable docker.service
    systemctl start docker.service
    yum install -y python-pip
    pip install docker-compose docker-py
  SHELL
        config.vm.provider :virtualbox do |v|
                v.name = "centos"
                v.customize ["modifyvm", :id, "--memory", 2048]
                v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
                end
        end
