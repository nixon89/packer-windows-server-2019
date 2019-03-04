

# Example usage
### What is it?
Example, how to use box in Vagrant.
### requirements 
1. Virtualbox
2. Vagrant
3. [vagrant-disksize plugin](https://github.com/sprotheroe/vagrant-disksize) (for expand vm disk size, if needed)
4. Ansible (for provision vm via ansible)
5. python-pip (for pip modules)
6. pywinrm (module from python-pip, for connect from ansible to windows vm through winrm)

### Runnin new box in Vagrant

You may see simple example `Vagrantfile` in this folder. There are commets for better understanding.

In `main.yml` located sample ansible playbook, for ensure, that vagrant ansible provisioner worked with windows vm.

For running vagrant box, after build and import new box to Vagrant, you must exec `vagrant up` in `examples` folder. New virtual machine will be launched ~4min15sec

For destroy vargant box, exec `vagrant destroy` in `examples` folder.