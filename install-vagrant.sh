#!/usr/bin/env bash
wget https://releases.hashicorp.com/vagrant/2.1.2/vagrant_2.1.2_x86_64.rpm
yum install -y vagrant_2.1.2_x86_64.rpm
yum install -y gcc libvirt-devel
vagrant plugin install vagrant-libvirt
vagrant plugin install vagrant-mutate
vagrant plugin install vagrant-rekey-ssh
wget http://cloud.centos.org/centos/7/vagrant/x86_64/images/CentOS-7.box

vagrant box add centos/7 CentOS-7.box
vagrant init centos/7
vagrant mutate centos/7 libvirt

# export VAGRANT_DEFAULT_PROVIDER=libvirt

vagrant up --provider=libvirt

