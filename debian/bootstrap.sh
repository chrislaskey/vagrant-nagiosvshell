#!/usr/bin/env bash

hostname="nagios-vshell"
fqdn="nagios-vshell.nagios.com"

# Setup hostname and fqdn
#
# Vagrantfile declarations sometimes fail in Debian 7.
# Easy enough to do it manually instead.

sed -i "s#^127.0.1.1.*#127.0.1.1	${fqdn} ${hostname}#" /etc/hosts
hostname ${hostname}
rm /etc/hostname && echo "${hostname}" >> /etc/hostname

# Setup packages
#
# Use `apt-mark` to prevent specific packages from being updated.

apt-get update
apt-mark hold grub-common grub-pc grub-pc-bin grub2-common
apt-get upgrade -y

# Setup nagios packages

export DEBIAN_FRONTEND=noninteractive
apt-get install -y nagios3 nagios-plugins
apt-get install -y vim less puppet

# Create nagiosadmin/nagiosadmin htpasswd file

htpasswd -bc /etc/nagios3/htpasswd.users nagiosadmin nagiosadmin
