# Symphony in a Vagrant VM

A super quick way to check out [Symphony CMS][] without harming any part of
your current setup. You must have [VirtualBox][] and [Vagrant][] installed in
order to use this.

- Copy contents of `hosts.txt` to your computer's `hosts` file
- Run `vagrant up` from this directory
- Navigate to <http://symphony.dev/symphony/>
- Login as `vagrant` with password: `vagrant`

## MySQL Panel

- Admin Page: <http://vagrant.dev/adminer/>
- Root Password: vagrant

## MailCatcher

Symphony is configured to send all emails to MailCatcher.

- MailCatcher Page: <http://vagrant.dev:1080/>

  [Symphony CMS]: http://www.getsymphony.com/
  [VirtualBox]: https://www.virtualbox.org/
  [Vagrant]: http://www.vagrantup.com/
