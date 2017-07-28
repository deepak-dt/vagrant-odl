# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'
vagrant_config = YAML.load_file("provisioning/virtualbox.conf.yml")

Vagrant.configure("2") do |config|

  config.vm.box = vagrant_config['box']
  
  #if Vagrant.has_plugin?("vagrant-cachier")
  #  # Configure cached packages to be shared between instances of the same base box.
  #  # More info on http://fgrehm.viewdocs.io/vagrant-cachier/usage
  #  config.cache.scope = :box
  #end

  # Bring up the Devstack controller node on Virtualbox
  config.vm.define "odl_vm" do |odl_vm|
    odl_vm.vm.provision :shell, path: "provisioning/setup-odl.sh" 

    config.vm.provider "virtualbox" do |vb|
      # Display the VirtualBox GUI when booting the machine
      vb.gui = true
  
      # Customize the amount of memory on the VM:
      vb.memory = vagrant_config['odl_vm']['memory']
      vb.cpus = vagrant_config['odl_vm']['cpus']
	
      config.vm.network "private_network", ip: "10.0.3.94"
      config.vm.network "private_network", ip: "10.0.4.94"
    end	
  end
    
  config.vm.synced_folder '.', '/vagrant'
  
end
