
# packer-windows-server-2019
### What is it?
Repo for buildin windows server 2016/2019 vagrant boxes from packer templates.

*Note: supported only VirtualBox provider.*
### requirements 
1. Virtualbox 5.2.26
2. Packer 1.3.4
3. Vagrant 2.2.3

### Building box by Packer
To build a Windows Server 2019 box, execute script:
```
$ sh build.sh
```
This script build Windwos Server 2019 box for the VirtualBox provider and import this box to vagrant,
### Runnin new box in Vagrant
See `examples` dir in this repo.
