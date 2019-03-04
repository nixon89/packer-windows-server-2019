#!/bin/bash

# Exit if any of the intermediate steps fail
set -e

# go 
cd windows

# building windows server 2019 box
packer build -only=virtualbox-iso 2019.json

# add windows server 2019 box to vagrant
vagrant box add  win2019-std windows-2019-standard-virtualbox.box

# list aviliable vagrant boxes
vagrant box list