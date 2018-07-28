# vagrant-minikube
Deploying Minikube Using Vagrant and Ansible


## Install  Vagrant On Centos 7 With KVM Libvirt

    sh install-vagrant.sh
## Provision Minikube with Vagrant using ( Vagrantfile )

vagrant up --provider=libvirt

## Re-Provisioned

vagrant up --provider=libvirt --provision


