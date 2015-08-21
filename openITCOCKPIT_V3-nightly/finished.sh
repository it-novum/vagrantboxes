#!/bin/bash

#Thanks to: http://askubuntu.com/questions/560412/displaying-ip-address-on-eth0-interface
ip=`ifconfig eth1 | grep 'inet addr' | cut -d ':' -f 2 | cut -d ' ' -f 1`
echo ""
echo ""
echo ""
echo -e "Installation successfully"
echo "Navigate to $ip in your browser to open openITCOCKPIT interface"
echo "E-Mail: vagrant@example.org Password: vagrant123"
echo ""
echo "MySQL Username: root Password: vagrant"
echo "SSH: vagrant ssh"
echo "------------"
echo ""