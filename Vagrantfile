
Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.provider "virtualbox" do |vb|
    #   # Display the VirtualBox GUI when booting the machine
    #   vb.gui = true
    #
    #   # Customize the amount of memory on the VM:
    vb.memory = "4096"
    vb.cpus = 2
  end

  config.vm.synced_folder "../", "/home/ubuntu/projects"

  #copy files so we can git push
  config.vm.provision "file", source: "../keys/.gitconfig", destination: "/home/ubuntu/.gitconfig"
  config.vm.provision "file", source: "../keys/id_rsa", destination: "/home/ubuntu/.ssh/id_rsa"
  config.vm.provision "file", source: "../keys/id_rsa.pub", destination: "/home/ubuntu/.ssh/id_rsa.pub"

  config.vm.provision "shell", path: "./scripts/configure.sh"
  
end