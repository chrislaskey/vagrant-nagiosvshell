#!/usr/bin/env bash

hostname="nagios-vshell"
fqdn="nagios-vshell.nagios.com"

# Setup nagios packages

yum update -y
yum upgrade -y
yum install -y nagios vim nagios-plugins

# Create nagiosadmin/nagiosadmin htpasswd file

htpasswd -bc /etc/nagios/passwd nagiosadmin nagiosadmin
