# What is openITCOCKPIT?
openITCOCKPIT is an Open Source system monitoring tool build for different monitoring engines like [Nagios](https://www.nagios.org/) or [Naemon](http://www.naemon.org/).

So easy that everyone can use it: create your entire monitoring configuration with a few clicks due to our smart interface wirtten in PHP with the MVC framework [CakePHP](http://book.cakephp.org/2.0/en/contents.html)

# What is openITCOCKPIT-dev Vagrant box?
For developers we build a special Vagrant box with some nice features like nightly packages pre installed NFS share and much more.

Additionally this box comes with the current **master** branch vom GitHub as a git repository so every edit you made is tracked by git automatically.

This box is perfect to get ready in a few minutes :-)

# Quick start guide
````
apt-get install vagrant virtualbox
mkdir openITCOCKPIT_V3-dev
cd openITCOCKPIT_V3-dev
wget https://raw.githubusercontent.com/it-novum/vagrantboxes/master/openITCOCKPIT_V3-dev/Vagrantfile
vagrant up
````

# User credentials
* Web interface

E-Mail: vagrant@example.org

Password: vagrant123

* MySQL

Username: root

Password: vagrant

* phpMyAdmin

https://xxx.xxx.xxx.xxx/phpmyadmin

* SSH
````
vagrant ssh
sudo su
````

# Important directories
Path of openITCOCKPIT interface (PHP and JavaScript files)
**/usr/share/openitcockpit/**

Path to configuration files
**/etc/openitcockpit/**

Path to Naemon/Nagios files
**/opt/openitc/nagios/**

# How to run the cake shell?
[CakePHP](http://book.cakephp.org/2.0/en/console-and-shells.html) comes with own shell that makes it very easy to run PHP scripts as an command line tool with parameters and stuff.

However if you run the cake shell it will destroy the file permissions and you will see a lot of error in your web interface. To avoid this, just run the command **oitc**
````
oitc <YOUR COMMAND>
````

# Documentation
If you are looking the openITCOCKPIT documentation please open your openITCOCKPIT interface and search Documentation in the menu on the left side

There is also a section for developers

# Have a problem or ideas to improve?
Please don't hesitate to create a Issue or Pull Request

# Need help or support?
* Join [#openitcockpit](http://webchat.freenode.net/?channels=openitcockpit) on freenode.net
* [Community forum](http://openitcockpit.org/forum.html)
* [it-novum GmbH](http://www.it-novum.com/en/support-openitcockpit-en.html) provides commercial support
