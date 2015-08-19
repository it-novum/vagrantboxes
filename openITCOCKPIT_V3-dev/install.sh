#!/bin/bash
set -e

# Create NFS and SMB configuration
echo "Configure NFS share"
echo "/usr/share/openitcockpit       172.28.128.0/24(rw,no_subtree_check,no_root_squash,all_squash,anonuid=33,anongid=33)" >> /etc/exports

echo "Configure SMB share"
cp smb.conf /etc/samba/smb.conf
echo -e 'vagrant\nvagrant' | smbpasswd -a www-data

service nfs-kernel-server restart
service smbd restart

# Run openITCOCKPIT setup
expect expect.file