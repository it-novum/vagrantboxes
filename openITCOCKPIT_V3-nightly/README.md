# What is openITCOCKPIT?
openITCOCKPIT is an Open Source system monitoring tool build for different monitoring engines like [Nagios](https://www.nagios.org/) or [Naemon](http://www.naemon.org/).

So easy that everyone can use it: create your entire monitoring configuration with a few clicks due to our smart interface wirtten in PHP

# Content of this Vagrant box
This Vagrant box will install the current nightly build of openITCOCKPIT.

# Quick start guide
````
apt-get install vagrant virtualbox
mkdir openITCOCKPIT_V3-nightly
cd openITCOCKPIT_V3-nightly
wget https://raw.githubusercontent.com/it-novum/vagrantboxes/master/openITCOCKPIT_V3-nightly/Vagrantfile
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

# Documentation
If you are looking the openITCOCKPIT documentation please open your openITCOCKPIT interface and search Documentation in the menu on the left side

# Have a problem or ideas to improve?
Please don't hesitate to create a Issue or Pull Request

# Need help or support?
* Join [#openitcockpit](http://webchat.freenode.net/?channels=openitcockpit) on freenode.net
* [Community forum](http://openitcockpit.org/forum.html)
* [it-novum GmbH](http://www.it-novum.com/en/support-openitcockpit-en.html) provides commercial support

