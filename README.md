# augusta-group-two-app

## Contributors

- [Adam](https://github.com/adampaulsackfield)
- [Mehdi](https://github.com/LemonRiz)
- [Airidas](https://github.com/Adaz99)
- [Risper](https://github.com/djava387)
- [Theo]()

- Coach : [Charlie](https://github.com/Charlie-robin)

## Setting up MongoDB

I first had to have vagrant installed on my Windows computer to allow me to automate provision of virtual machines, as well as Oracle Virtualbox to use as a GUI. Vagrant uses a vagrantfile (written in Ruby) with instructions for creating and destroying new vagrant machines. Provisioning the machines with a vagrantfile allows for automatic installation of software, configuration changes, and modification of options during the 'vagrant up' process.
I followed [this tutorial](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/) in order to install MongoDB. I set up a vagrantfile that would run a script.sh to update the system, set up the IP address, and download the necessary data and packages - Python, node, npm, and mongoDB. The script also copies the mongod.conf into the Ubuntu VM which is used to direct traffic to the given port.
The script ends by starting the database API and running the server.js. The machine is now accessible via SSH.

###
