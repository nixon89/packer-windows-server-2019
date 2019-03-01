# packer-windows-server-2019

To build a Windows Server 2019 box for only the VirtualBox provider
```
$ cd windows
$ packer build -only=virtualbox-iso 2019.json
```
If build finished good, you wil see this tty:
```
==> Builds finished. The artifacts of successful builds are:
--> virtualbox-iso: VM files in directory: ../builds/packer-windows-2019-standard-virtualbox
--> virtualbox-iso: 'virtualbox' provider box: windows-2019-standard-virtualbox.box
```
For import new box (`windows-2019-standard-virtualbox.box`) in this example, nedd execute command:
```
vagrant box add  win2019-std windows-2019-standard-virtualbox.box
```
In this example, box will be added to vagrant with name `win2019-std `

For view aviliable boxes, use `vagrant box list` command:
```
$ vagrant box list
bento/ubuntu-16.04 (virtualbox, 0)
bento/ubuntu-18.04 (virtualbox, 0)
```