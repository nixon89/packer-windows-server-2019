# packer-windows-server-2019

To build a Windows Server 2019 box for only the VirtualBox provider
```
$ cd windows
$ packer build -only=virtualbox-iso 2019.json
```