Vagrant VM Hosts Plugin
=======================

This Vagrant plugin allows you to add entries to the hosts file of the VM. This is mostly useful in a multi-VM environment, where you might want the virtual machines to reach each other by name through the host-only interface. There are a few other solutions available, but these mostly require OS X, which I do not have.

**NOTE:** This is the first release, containing only a proof-of-concept implementation. Functionality/configuration is bound to change in the future.

Installation
------------

This plugin has been tested on Vagrant 1.0, but will probably also work on somewhat older versions. The easiest way to install it, is through the `vagrant gem` command:

    vagrant gem install vagrant-vmhosts

Usage
-----

To let Vagrant add entries to the `/etc/hosts` file on a VM, use the `config.vmhosts.list` directive:

```ruby
Vagrant::Config.run do |config|
  config.vmhosts.list = hosts
end
```

This directive takes an array of hashes, containing the entries you want to add:

```ruby
hosts = [
          { "ip" => "172.16.0.2",
            "canonical" => "puppet.example.com",
            "aliases" => ["puppet"] }
        ]
```

The plugin runs at the end of the boot sequence, before the provisioners. So you can use any hostname defined in the array while provisioning. For example, if you have a multi-VM setup with a puppetmaster VM and a VM with a puppet agent pointing to this master, you can use the host entry pointing to the puppetmaster.

TODO
----

* command
* unit tests
* hosts format
* validate config

Copyright
---------

Copyright (c) 2012 Cegeka NV

License
-------

Vagrant-vmhosts is licensed under the Apache License, Version 2.0. See the LICENSE file for more details.
