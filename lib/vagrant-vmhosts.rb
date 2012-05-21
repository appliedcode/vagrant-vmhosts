require 'vagrant'
require 'vagrant-vmhosts/config'
require 'vagrant-vmhosts/action'

Vagrant.config_keys.register(:vmhosts) { VagrantVmHosts::Config }

Vagrant.actions[:start].insert_after(Vagrant::Action::VM::Boot,
                                     VagrantVmHosts::Action)
