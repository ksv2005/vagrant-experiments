Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/impish64"
    config.vm.network "forwarded_port", guest: 8080, host: 8080
    config.vm.provider "virtualbox" do |v|
        v.memory = 8192
        v.cpus = 4
    end
    config.vm.provision "shell", path: "script.sh"
end
