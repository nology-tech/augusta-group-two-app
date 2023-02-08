# Augusta Group Two App

### Development Environment - Vagrant (M Series Mac)

#### Setup

To spin up the project locally using the development environment, which mimicks that of the live site, you will need to install ansible on your host mac using the command `brew install ansible`. Once ansible is installed you can uncomment the config inside the Vagrantfile relevant to M Series Macs. Finally run `vagrant up` to build the environment.

#### Score API (Server)

The first machine that is provisioned is for an Node / Express API. This uses MongoDB as its datastore. Ansible is used to configure, mongo, node, forever, and also shares its IP address with a global file for use with the client.

#### Snake (Client)

The second machine that is provisioned is for a vanilla HTML, CSS, and JS implementation of the Snake game. Ansible is used to configure nginx and copies any configuration that is required. For instance, updating the Game.js file to the correct IP for our API and setting up nginx.


## Running Snake App

The Vagrantfile also is set up to provision a second machine called 'snake' which can run the Snake game. It assigns a static IP for locally accessing the app. Nginx acts as a webserver. When you run the `vagrant up` command the snake machine will download and install all necessary packages using the snake/script.sh, as well as copy the snake.conf details into the nginx/sites-available directory to allow for access.

The IP is set to "192.168.56.10" in the vagrantfile, and if you access this IP in your Windows browser, the game snake is accessible. This IP could also be checked if you SSH into the snake machine and use the 'hostname -I' command.

---

### CI-Pipeline With GitHub Using Jenkins

## CI/CD & Jenkins

## How have you use Jenkins to add Continuous integration with this project?

I have built a test environment in Jenkins that will run the tests and catch any errors with the code and if everything is fine it will be pushed to
the branch that is specified in the Jenkins configuration.

## How did you allow Jenkins access to the Github repo?

In the Jenkins configuration I ticked the Github project box and pasted the Github Url of where i want the changes to be pushed (currently test-brach but will change to main later)

## How did you get the Github repo to trigger the build?

Using the private ssh key generated by using the command "Ssh-keygen -t rsa" and had to add it to Github,

Added a GitHub webhook with the Jenkins url that was triggered when a push request was made and if the tests were successful it would merge it to the branch specified

## Where in the config do you need to go to update the branch?

To access the Jenkins config you would login to Jenkins via (http://3.140.188.113:8080/) find augusta-group-two-CI and click configure. Under source code management (branches to build) you would specify what branch you want it to merge to currently set to 19-ci-pipeline

---

## Automating Snake Game Deployment using Ansible Playbook and Packer

The Packer AMI step involves using Packer to create Amazon Machine Images (AMI's) of the App machine. Ansible is needed as the provisioning step for Packer build.

#### packer.json

Specifies the AWS access key and secret key as variables. The builder section specifies the type of builder to use (in this case, Amazon Elastic Block Store (EBS)), the AWS region, the source AMI to use, the instance type, the SSH username, and the name of the AMI to create.

The provisioner section specifies that Ansible should be used to provision the machine, and the app.yml file contains the Ansible playbook for provisioning

#### app.yml

Contains the Ansible playbook for deploying the Snake Game on a server. The playbook is executed on all hosts and requires root access, which is achieved using the `become` and `become_user` parameters.

#### Tasks

    - updates the server packages
    -  installs Nginx
    - creates a directory for the game files
    -  creates a server block in Nginx
    - copies the game files to the server
    -  runs a shell script to update the Nginx configuration file with the server's IP address
    - formats the shell script, runs it, and restarts the Nginx service.

### creating AMI for Mongodb and provisioning with Ansible

Created a packer configuration file that copies files from "env" and "scoreApi" to the instance, with a shell script "base.sh", "npm.sh" and executing an Ansible playbook "mongodb.yml".

---

---

## Contributors

- [Adam](https://github.com/adampaulsackfield)

- [Mehdi](https://github.com/LemonRiz)

- [Airidas](https://github.com/Adaz99)

- [Risper](https://github.com/djava387)

- [Theo](https://github.com/theo-Ross/)

- Coach : [Charlie](https://github.com/Charlie-robin)
