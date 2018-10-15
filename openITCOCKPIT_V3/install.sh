#!/bin/bash
set -e

<<EOF debconf-set-selections
openitcockpit-mysql	openitcockpit/app-password-confirm	vagrant
openitcockpit-mysql	openitcockpit/password-confirm	password
openitcockpit-mysql	openitcockpit/mysql/admin-pass	password	vagrant
# MySQL-Anwendungspasswort für openitcockpit-mysql:
openitcockpit-mysql	openitcockpit/mysql/app-pass	password
# Soll ein Backup der Datenbank für openitcockpit-mysql vor dem Upgrade durchgeführt werden?
openitcockpit-mysql	openitcockpit/upgrade-backup	boolean	true
openitcockpit-mysql	openitcockpit/remove-error	select	abort
openitcockpit-mysql	openitcockpit/internal/reconfiguring	boolean	false
# Upgrade der Datenbank für openitcockpit-mysql mit dbconfig-common durchführen?
openitcockpit-mysql	openitcockpit/dbconfig-upgrade	boolean	true
openitcockpit-mysql	openitcockpit/missing-db-package-error	select	abort
# Computer auf dem der MySQL-Server für openitcockpit-mysql läuft:
openitcockpit-mysql	openitcockpit/remote/newhost	string
# MySQL-Datenbankname für openitcockpit-mysql:
openitcockpit-mysql	openitcockpit/db/dbname	string	openitcockpit
openitcockpit-mysql	openitcockpit/internal/skip-preseed	boolean	false
# MySQL-Benutzername für openitcockpit-mysql:
openitcockpit-mysql	openitcockpit/db/app-user	string	openitcockpit
# Datenbanktyp, der durch das Paket openitcockpit-mysql benutzt werden soll:
openitcockpit-mysql	openitcockpit/database-type	select	mysql
# Datenbank für openitcockpit-mysql neu installieren?
openitcockpit-mysql	openitcockpit/dbconfig-reinstall	boolean	false
# Dekonfigurieren der Datenbank für openitcockpit-mysql mit dbconfig-common?
openitcockpit-mysql	openitcockpit/dbconfig-remove	boolean
openitcockpit-mysql	openitcockpit/remote/port	string
# Soll die Datenbank für openitcockpit-mysql vollständig gelöscht werden?
openitcockpit-mysql	openitcockpit/purge	boolean	false
openitcockpit-mysql	openitcockpit/upgrade-error	select	abort
# Rechnername des MySQL-Datenbankservers für openitcockpit-mysql:
openitcockpit-mysql	openitcockpit/remote/host	select
openitcockpit-mysql	openitcockpit/mysql/admin-user	string	root
openitcockpit-mysql	openitcockpit/install-error	select	abort
# Konfigurieren der Datenbank für openitcockpit-mysql mit dbconfig-common?
openitcockpit-mysql	openitcockpit/dbconfig-install	boolean	true
phpmyadmin	phpmyadmin/mysql/admin-pass	password	vagrant
phpmyadmin	phpmyadmin/app-password-confirm	password
phpmyadmin	phpmyadmin/password-confirm	password
phpmyadmin	phpmyadmin/setup-password	password
# MySQL-Anwendungspasswort für phpmyadmin:
phpmyadmin	phpmyadmin/mysql/app-pass	password
# Soll die Datenbank für phpmyadmin vollständig gelöscht werden?
phpmyadmin	phpmyadmin/purge	boolean	false
# Upgrade der Datenbank für phpmyadmin mit dbconfig-common durchführen?
phpmyadmin	phpmyadmin/dbconfig-upgrade	boolean	true
# Rechnername des MySQL-Datenbankservers für phpmyadmin:
phpmyadmin	phpmyadmin/remote/host	select
phpmyadmin	phpmyadmin/internal/skip-preseed	boolean	false
# Konfigurieren der Datenbank für phpmyadmin mit dbconfig-common?
phpmyadmin	phpmyadmin/dbconfig-install	boolean	true
# Soll ein Backup der Datenbank für phpmyadmin vor dem Upgrade durchgeführt werden?
phpmyadmin	phpmyadmin/upgrade-backup	boolean	true
# Computer auf dem der MySQL-Server für phpmyadmin läuft:
phpmyadmin	phpmyadmin/remote/newhost	string
phpmyadmin	phpmyadmin/mysql/admin-user	string	root
phpmyadmin	phpmyadmin/internal/reconfiguring	boolean	false
phpmyadmin	phpmyadmin/install-error	select	abort
phpmyadmin	phpmyadmin/remote/port	string
phpmyadmin	phpmyadmin/reconfigure-webserver	multiselect
phpmyadmin	phpmyadmin/missing-db-package-error	select	abort
# MySQL-Benutzername für phpmyadmin:
phpmyadmin	phpmyadmin/db/app-user	string	phpmyadmin
phpmyadmin	phpmyadmin/passwords-do-not-match	error
phpmyadmin	phpmyadmin/upgrade-error	select	abort
# MySQL-Datenbankname für phpmyadmin:
phpmyadmin	phpmyadmin/db/dbname	string	phpmyadmin
# Datenbanktyp, der durch das Paket phpmyadmin benutzt werden soll:
phpmyadmin	phpmyadmin/database-type	select	mysql
phpmyadmin	phpmyadmin/setup-username	string	admin
# Dekonfigurieren der Datenbank für phpmyadmin mit dbconfig-common?
phpmyadmin	phpmyadmin/dbconfig-remove	boolean
# Datenbank für phpmyadmin neu installieren?
phpmyadmin	phpmyadmin/dbconfig-reinstall	boolean	false
phpmyadmin	phpmyadmin/remove-error	select	abort
# Verbindungsmethode an die MySQL-Datenbank von phpmyadmin:
phpmyadmin	phpmyadmin/mysql/method	select	unix socket
EOF

echo 'deb https://packages.openitcockpit.com/repositories/trusty trusty main' > /etc/apt/sources.list.d/openitcockpit.list
yes | apt-key adv --recv --keyserver hkp://keyserver.ubuntu.com 1148DA8E
#wget http://apt.openattic.org/A7D3EAFA.txt -q -O - | apt-key add -

apt-get update
#Nagios 4 + NDOutils
#apt-get install -y openitcockpit{,-nagios,-ndoutils,-npcd}

#Naemon + Statusengine
apt-get install -y openitcockpit{,-naemon,-statusengine-naemon,-npcd}

expect expect.file
