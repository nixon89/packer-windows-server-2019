# packer-windows-server-2019

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