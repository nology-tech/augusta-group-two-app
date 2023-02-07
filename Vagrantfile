# Vagrant.configure("2") do |config|
#   config.vm.synced_folder "global/", "/home/vagrant/global"

#   # Provisiing MongoDB - Scores API
#   config.vm.define "mongodb" do | mongodb |
#     mongodb.vm.box = "starboard/ubuntu-arm64-20.04.5"
#     mongodb.vm.synced_folder "env/mongodb", "/home/vagrant/env/mongodb"
#     mongodb.vm.synced_folder "db/", "/home/vagrant/db"

#     mongodb.vm.provider "vmware_desktop" do |v|
#       v.gui = true
#       v.vmx["ethernet0.virtualdev"] = "vmxnet3"
#     end

#     mongodb.vm.provision "shell", inline: <<-SHELL
#       systemctl disable apt-daily.service
#       systemctl disable apt-daily.timer
#       sudo apt remove unattended-upgrades -y
#     SHELL
#     mongodb.vm.provision "shell", path: "env/mongodb/script.sh"
#   end

#   # Provisioning Static Website - Snake Game
#   config.vm.define "snake" do | snake |
#     snake.vm.box = "starboard/ubuntu-arm64-20.04.5"
#     config.vm.synced_folder "app/", "/home/vagrant/app"
#     config.vm.synced_folder "env/snake", "/home/vagrant/env/snake"

#     snake.vm.box_version = "20221120.20.40.0"
#     snake.vm.box_download_insecure = true

#     # snake.vm.hostname = "nology.training"
#     # snake.hostsupdater.aliases = {
#     #   '192.168.63.138' => "nology.training",
#     # }

#     snake.vm.provider "vmware_desktop" do |v|
#         v.gui = true
#         v.vmx["ethernet0.virtualdev"] = "vmxnet3"
#     end

#     snake.vm.provision "shell", inline: <<-SHELL
#       systemctl disable apt-daily.service
#       systemctl disable apt-daily.timer
#       sudo apt remove unattended-upgrades -y
#     SHELL
#     snake.vm.provision "shell", path: "env/snake/script.sh"
#   end
# end

Vagrant.configure("2") do |config|
  config.vm.synced_folder "global/", "/home/vagrant/global"

  # Provisiing MongoDB - Scores API
  config.vm.define "mongodb" do | mongodb |
    mongodb.vm.box = "generic/ubuntu2010"
    mongodb.vm.network "private_network", ip: "192.168.56.20"
    mongodb.vm.synced_folder "env/mongodb", "/home/vagrant/env/mongodb"
    mongodb.vm.synced_folder "db/", "/home/vagrant/db"


    mongodb.vm.provider "virtualbox" do |v|
      v.name = "mongodb"
    end

    mongodb.vm.provision "shell", inline: <<-SHELL
      systemctl disable apt-daily.service
      systemctl disable apt-daily.timer
      sudo apt remove unattended-upgrades -y
    SHELL
    mongodb.vm.provision "shell", path: "env/mongodb/script.sh"
  end

  # Provisioning Static Website - Snake Game
  config.vm.define "snake" do | snake |
    snake.vm.box = "generic/ubuntu2010"
    config.vm.synced_folder "app/", "/home/vagrant/app"
    config.vm.synced_folder "env/snake", "/home/vagrant/env/snake"
    snake.vm.network "private_network", ip: "192.168.56.10"

    # snake.vm.box_version = "20221120.20.40.0"
    # snake.vm.box_download_insecure = true

    # snake.vm.hostname = "nology.training"
    # snake.hostsupdater.aliases = {
    #   '192.168.63.138' => "nology.training",
    # }

     snake.vm.provider "virtualbox" do |v|
        v.name = "snake"
    end

    snake.vm.provision "shell", inline: <<-SHELL
      systemctl disable apt-daily.service
      systemctl disable apt-daily.timer
      sudo apt remove unattended-upgrades -y
    SHELL
    snake.vm.provision "shell", path: "env/snake/script.sh"
  end
end