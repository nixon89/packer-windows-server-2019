# packer-windows-server-2019

## requirements 
Packer
Vagrant
Virtualbox

## Building box by Packer
To build a Windows Server 2019 box for only the VirtualBox provider
```
$ cd windows
$ packer build -only=virtualbox-iso 2019.json
```
If build finished good, you wil see this in tty:
```
.
.
.
==> Builds finished. The artifacts of successful builds are:
--> virtualbox-iso: VM files in directory: ../builds/packer-windows-2019-standard-virtualbox
--> virtualbox-iso: 'virtualbox' provider box: windows-2019-standard-virtualbox.box
```
## Importing new box to Vagrant

For import new box (`windows-2019-standard-virtualbox.box`), need execute command:
```
vagrant box add  win2019-std windows-2019-standard-virtualbox.box
```

In this example, box will be added to vagrant with name `win2019-std `.

Output:
```
==> box: Box file was not detected as metadata. Adding it directly...
==> box: Adding box 'win2019-std' (v0) for provider: 
    box: Unpacking necessary files from: file:///home/nixon89/Documents/repo/packer-windows-server-2019/windows/windows-2019-standard-virtualbox.box
==> box: Successfully added box 'win2019-std' (v0) for 'virtualbox'!
```

For view aviliable boxes, use `vagrant box list` command:
```
$ vagrant box list

win2019-std        (virtualbox, 0)
```
## Runnin new box in Vagrant

Using new `win2019-std` box in Vagrantfile:
```
Vagrant.configure("2") do |config|
  config.vm.box = "win2019-std"
end
```
For example:
```
cd ~
mkdir newdir
cd newdir
nano Vagrantfile
```
Then insert code above in Vagrantfile.
Ctrl+X, Y, Enter
Then execute:
`vagrant up`

Console output:
```
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Importing base box 'win2019-std'...
==> default: Matching MAC address for NAT networking...
==> default: Setting the name of the VM: newdir_default_1551460942992_88012
Vagrant is currently configured to create VirtualBox synced folders with
the `SharedFoldersEnableSymlinksCreate` option enabled. If the Vagrant
guest is not trusted, you may want to disable this option. For more
information on this option, please refer to the VirtualBox manual:

  https://www.virtualbox.org/manual/ch04.html#sharedfolders

This option can be disabled globally with an environment variable:

  VAGRANT_DISABLE_VBOXSYMLINKCREATE=1

or on a per folder basis within the Vagrantfile:

  config.vm.synced_folder '/host/path', '/guest/path', SharedFoldersEnableSymlinksCreate: false
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
==> default: Forwarding ports...
    default: 3389 (guest) => 3389 (host) (adapter 1)
    default: 5985 (guest) => 55985 (host) (adapter 1)
    default: 5986 (guest) => 55986 (host) (adapter 1)
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: WinRM address: 127.0.0.1:55985
    default: WinRM username: vagrant
    default: WinRM execution_time_limit: PT2H
    default: WinRM transport: negotiate
==> default: Machine booted and ready!
==> default: Checking for guest additions in VM...
==> default: Mounting shared folders...
    default: /vagrant => /home/nixon89/newdir
```
Common vagrant commands:

`vagrant box`             manages boxes: installation, removal, etc.

`vagrant cloud`           manages everything related to Vagrant Cloud

`vagrant destroy`         stops and deletes all traces of the vagrant machine

`vagrant global-status`   outputs status Vagrant environments for this user

`vagrant halt`            stops the vagrant machine

`vagrant help`            shows the help for a subcommand

`vagrant init`            initializes a new Vagrant environment by creating a Vagrantfile

`vagrant login`           

`vagrant package`         packages a running vagrant environment into a box

`vagrant plugin`          manages plugins: install, uninstall, update, etc.

`vagrant port`            displays information about guest port mappings

`vagrant powershell`      connects to machine via powershell remoting

`vagrant provision`       provisions the vagrant machine

`vagrant push`            deploys code in this environment to a configured destination

`vagrant rdp`             connects to machine via RDP

`vagrant reload`          restarts vagrant machine, loads new Vagrantfile configuration

`vagrant resume`          resume a suspended vagrant machine

`vagrant snapshot`        manages snapshots: saving, restoring, etc.

`vagrant ssh`             connects to machine via SSH

`vagrant ssh-config`      outputs OpenSSH valid configuration to connect to the machine

`vagrant status`          outputs status of the vagrant machine

`vagrant suspend`         suspends the machine

`vagrant up`              starts and provisions the vagrant environment

`vagrant upload`          upload to machine via communicator

`vagrant validate`        validates the Vagrantfile

`vagrant version`         prints current and latest Vagrant version

`vagrant winrm`           executes commands on a machine via WinRM

`vagrant winrm-config`    outputs WinRM configuration to connect to the machine