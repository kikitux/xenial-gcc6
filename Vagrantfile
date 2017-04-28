Vagrant.configure(2) do |config|
  config.vm.provider "virtualbox"
  config.vm.box = "cbednarski/ubuntu-1604"
  config.vm.provision "shell", path: "scripts/provision.sh" , privileged: false
end
