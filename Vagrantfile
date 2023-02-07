Vagrant.configure("2") do |config|
  config.vm.synced_folder "global/", "/home/vagrant/global"

  # Provisiing MongoDB - Scores API
  config.vm.define "scoreApi" do | scoreApi |
    scoreApi.vm.box = "starboard/ubuntu-arm64-20.04.5"
    scoreApi.vm.synced_folder "env/mongodb", "/home/vagrant/env/mongodb"
    scoreApi.vm.synced_folder "scoreApi/", "/home/vagrant/scoreApi"
    
    scoreApi.vm.provision "ansible" do |ansible|
      ansible.verbose = "v"
      ansible.playbook = "scoreApi-playbook.yml"
    end

    scoreApi.vm.provider "vmware_desktop" do |v|
      v.gui = true
      v.vmx["ethernet0.virtualdev"] = "vmxnet3"
    end
  end

  # Provisioning Static Website - Snake Game
  config.vm.define "snake" do | snake |
    snake.vm.box = "starboard/ubuntu-arm64-20.04.5"
    config.vm.synced_folder "snake/", "/home/vagrant/snake"
    config.vm.synced_folder "env/snake", "/home/vagrant/env/snake"

    snake.vm.box_version = "20221120.20.40.0"
    snake.vm.box_download_insecure = true

    snake.vm.provision "ansible" do |ansible|
      ansible.verbose = "v"
      ansible.playbook = "snake-playbook.yml"
    end

    # snake.vm.hostname = "nology.training"
    # snake.hostsupdater.aliases = {
    #   '192.168.63.138' => "nology.training",
    # }

    snake.vm.provider "vmware_desktop" do |v|
        v.gui = true
        v.vmx["ethernet0.virtualdev"] = "vmxnet3"
    end
  end
end