Vagrant.configure(2) do |config|
  config.vm.box = "xenial"
  config.vm.box_url = "https://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-vagrant.box"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.provision "shell", path: "gcc-6_ubuntu.sh" , privileged: false
end
