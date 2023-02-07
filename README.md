# augusta-group-two-app

## Contributors

- [Adam](https://github.com/adampaulsackfield)
- [Mehdi](https://github.com/LemonRiz)
- [Airidas](https://github.com/Adaz99)
- [Risper](https://github.com/djava387)
- [Theo]()

- Coach : [Charlie](https://github.com/Charlie-robin)

## Notes

Ansible is used as the provisioning step for the Packer build i.e Ansible playbooks will be used to install the necessary software and dependencies on the machine that Packer creates.

- base.sh is a provisioner shell that installs ansible

  ```
  # Install Ansible
  echo ">>>>>>>>>>> INSTALLING ANSIBLE"
  sudo apt-get update
  sudo apt-get install -y ansible
  ```

- playbook.yml is a dummy file that contains the Ansible playbook for provisioning
- I added a provisioner section specifies that Ansible should be used to provision the machine. Ansible-local runs them locally within the server

```
   {
      "type": "ansible-local",
      "playbook_file": "playbook.yml"
    }
```

- An EC2 instance was launched, following a success Packer build/image
- In order to confirm proper provisioning by ansible, I ssh into the machine and ran `node --version`, which returned the node version as requested in playbook.yml

## Next steps

Create two AMIs for app and Mongodb using the steps above
