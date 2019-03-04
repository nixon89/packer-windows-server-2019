
# packer-windows-server-2019
### What is it?
Repo for building windows server 2016/2019 vagrant boxes from packer templates.

For example, this box may be used for testing ansible windows roles.

*Note: supported only VirtualBox provider.*

### Requirements 
1. Virtualbox 5.2.26
2. Packer 1.3.4
3. Vagrant 2.2.3

### Building box by Packer
To build a Windows Server 2019 box, execute bash script:
```
$ sh build.sh
```
This script build Windwos Server 2019 box for the VirtualBox provider and import this box to vagrant. Build time ~46 minutes.

### Runnin new box in Vagrant
See `examples` dir in this repo.
