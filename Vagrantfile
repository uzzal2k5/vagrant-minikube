# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |vmConfig|
  vmConfig.vm.define :minikube do |minikube|
        minikube.vm.box = "centos/7"
        minikube.vm.hostname = 'minikube'

  end
  vmConfig.vm.box_check_update = false

  # Public Network
  vmConfig.vm.network :public_network,
        :dev => 'virbr0',
        :mode => 'bridge',
        :type => 'bridge'

  # Private network with ipv6 support
  vmConfig.vm.network "private_network",
        :ip => "192.168.33.10",
        :libvirt__guest_ipv6 => "yes",
        :libvirt__ipv6_address => "2001:db8:ca2:6::1",
        :libvirt__ipv6_prefix => "64",
        :libvirt__domain_name => "minikube.local"

  # Resource Allocation
  vmConfig.vm.provider :libvirt do |libvirt|
        libvirt.cpus = 4
        libvirt.cputopology :sockets => '2',
            :cores => '2',
            :threads => '1'
        libvirt.memory = '4096'
        libvirt.nested = 'true'

  end
  vmConfig.vm.provision :ansible do |ansible|
      ansible.verbose = "v"
      ansible.playbook = "playbook.yml"

  end

end
