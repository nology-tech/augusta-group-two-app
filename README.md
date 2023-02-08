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


-----------------------------------------------------------------------------------------------------------

## Setting up MongoDB

I first had to have vagrant installed on my Windows computer to allow me to automate provision of virtual machines, as well as Oracle Virtualbox to use as a GUI. Vagrant uses a vagrantfile (written in Ruby) with instructions for creating and destroying new vagrant machines. Provisioning the machines with a vagrantfile allows for automatic installation of software, configuration changes, and modification of options during the 'vagrant up' process.
I followed [this tutorial](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/) in order to install MongoDB. I set up a vagrantfile that would run a script.sh to update the system, set up the IP address, and download the necessary data and packages - Python, node, npm, and mongoDB. The script also copies the mongod.conf into the Ubuntu VM which is used to direct traffic to the given port.
The script ends by starting the database API and running the server.js. The machine is now accessible via SSH.



## Contributors

- [Adam](https://github.com/adampaulsackfield)
- [Mehdi](https://github.com/LemonRiz)
- [Airidas](https://github.com/Adaz99)
- [Risper](https://github.com/djava387)
- [Theo]()

- Coach : [Charlie](https://github.com/Charlie-robin)
