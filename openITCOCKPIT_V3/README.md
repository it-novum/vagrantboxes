# What is openITCOCKPIT?
openITCOCKPIT is an Open Source system monitoring tool build for different monitoring engines like [Nagios](https://www.nagios.org/) or [Naemon](http://www.naemon.org/).

So easy that everyone can use it: create your entire monitoring configuration with a few clicks due to our smart interface wirtten in PHP

# Content of this Vagrant box
This Vagrant box will install the latest stable version of openITCOCKPIT.

# Quick start guide
````
apt-get install vagrant virtualbox
mkdir openITCOCKPIT_V3
cd openITCOCKPIT_V3
wget https://raw.githubusercontent.com/it-novum/vagrantboxes/master/openITCOCKPIT_V3/Vagrantfile
vagrant up
````

# User credentials
* Web interface

E-Mail: vagrant@example.org

Password: vagrant123

* MySQL

Username: root

Password: vagrant

* SSH
````
vagrant ssh
sudo su
````

# Are you a developer?
This Vagrant box is not made for developers.

**If you like to contribute to openITCOCKPIT please use the [openITCOCKPIT_V3-dev](https://github.com/it-novum/vagrantboxes/tree/master/openITCOCKPIT_V3-dev) Vagrant box**

# Have a problem or ideas to improve?
Please don't hesitate to create a Issue or Pull Request

# Need help or support?
* Join [#openitcockpit](http://webchat.freenode.net/?channels=openitcockpit) on freenode.net
* [Community forum](http://openitcockpit.org/forum.html)
* [it-novum GmbH](http://www.it-novum.com/en/support-openitcockpit-en.html) provides commercial support