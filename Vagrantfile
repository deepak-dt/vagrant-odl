# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'
vagrant_config = YAML.load_file("provisioning/virtualbox.conf.yml")

Vagrant.configure("2") do |config|

  config.vm.box = vagrant_config['box']
  
  if Vagrant.has_plugin?("vagrant-cachier")
    # Configure cached packages to be shared between instances of the same base box.
    # More info on http://fgrehm.viewdocs.io/vagrant-cachier/usage
    config.cache.scope = :box
  end

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
  
    # Customize the amount of memory on the VM:
    vb.memory = vagrant_config['odl_vm']['memory']
    vb.cpus = vagrant_config['odl_vm']['cpus']
	
    config.vm.network "private_network", ip: "10.0.3.94", virtualbox__hostonly: "vboxnet6"
    config.vm.network "private_network", ip: "10.0.4.94", virtualbox__hostonly: "vboxnet7"
	
  end
  
  contrail_devstack_allinone.vm.provision :shell, path: "provisioning/setup-odl.sh"
  
  config.vm.synced_folder '.', '/vagrant'
  
end
