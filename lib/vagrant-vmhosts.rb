require 'vagrant'
require 'vagrant-vmhosts/config'
require 'vagrant-vmhosts/action'

Vagrant.config_keys.register(:vmhosts) { VagrantVmHosts::Config }

Vagrant.actions[:start].insert_after(Vagrant::Action::VM::Boot,
                                     VagrantVmHosts::Action)

# Custom translations are added to the load path here
I18n.load_path << File.expand_path("../../locales/en.yml", __FILE__)
