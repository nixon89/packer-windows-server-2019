#!/bin/bash
#set text color
YELLOW='\033[0;33m'     #  ${YELLOW}
# Exit if any of the intermediate steps fail
set -e
echo "${YELLOW}==> build.sh: going to windows templates directory ${YELLOW}\n"
# cd windows
echo "${YELLOW}==> build.sh: building windows server 2019 box from template ${YELLOW}\n"
# packer build -only=virtualbox-iso 2019.json
echo "${YELLOW}==> build.sh: importing windows server 2019 box to vagrant ${YELLOW}\n"
# vagrant box add  win2019-std windows-2019-standard-virtualbox.box
echo "${YELLOW}==> build.sh: list aviliable vagrant boxes ${YELLOW}\n"
vagrant box list 