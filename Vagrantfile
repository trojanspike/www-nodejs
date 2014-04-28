# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.synced_folder "./", "/root",
       	:owner =>"root", :group => "root", :mount_options => ['dmode=777,fmode=777']
    config.vm.synced_folder "./www-nodejs", "/www/www-nodejs",
           	:owner =>"www-nodejs", :group => "www-nodejs", :mount_options => ['dmode=755,fmode=644']

    config.vm.provider :virtualbox do |box|
      		box.gui = false
      		box.customize ["modifyvm", :id, "--memory", "315"]
    end # box conf
# TODO - 2 boxes , ubuntu & centos
    # ubuntu box
    config.vm.define 'www-nodejs-ubuntu' do |config|
        config.vm.box = "ubuntu12_04-32"
        config.vm.network :private_network, ip: "192.168.33.15"
        config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-i386-vagrant-disk1.box"
    end # end ubuntu test env

    # centos box
    config.vm.define 'www-nodejs-centos' do |config|
        config.vm.box = "centos6.4-32"
        config.vm.network :private_network, ip: "192.168.33.16"
        config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-i386-v20131103.box"
    end # end centos test env
end
