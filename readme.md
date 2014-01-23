# vagrant-nagiosvshell

Contains the Vagrant files used to test [NagiosEnterprises/nagiosvshell](https://github.com/NagiosEnterprises/nagiosvshell).

There are two vms included:

- Debian 7.3, with `apt` packages `nagios3` and `nagios-plugins`
- CentOS 6.5, with `yum` packages `nagios` and `nagios-plugins`

## Testing

To test a VM:

```sh
cd ./centos
git clone https://github.com/NagiosEnterprises/nagiosvshell ./nagiosvshell
vagrant up
vagrant ssh
```

Then follow the latest installation instructions for V-Shell from inside the VM. For example:

```sh
cd /vagrant/nagiosvshell
vim ./config.php
chmod u+x ./install.php
./install.php
```

And can be viewed from the host machine via:

    http://localhost:<port>/vshell

Check the `Vagrantfile` for the correct port number. As of writing Debian is on 8800 and CentOS on 8810.
