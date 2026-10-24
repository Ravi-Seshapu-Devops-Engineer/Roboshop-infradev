#!/bin/bash

#we are creating 50gb root disk, but only 20gb is partitioned 
# remaining 30 gb we need to extend using below commands

growpart /dev/nvme0n1 4
lvextend -r -L +30G /dev/mapper/RootVG-rootVol
xfs_growfs /home


dnf install -y dnf-plugins-core
dnf config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
dnf clean all
dnf makecache
dnf install -y terraform
