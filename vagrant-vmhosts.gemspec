lib = File.expand_path('../lib', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'vagrant-vmhosts/version'

Gem::Specification.new do |s|
  s.name        = "vagrant-vmhosts"
  s.version     = VagrantVmHosts::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kristof Willaert"]
  s.email       = ["kristof.willaert@gmail.com"]
  s.homepage    = "https://github.com/cegeka/vagrant-vmhosts"
  s.license     = "Apache 2.0"
  s.summary     = "A Vagrant plugin to add entries to the hosts file of the VM"
  s.description = "This Vagrant plugin allows you to add entries to the hosts file of the VM. This is particularly useful in a multi-VM environment to get all machines to know each other by name."

  s.required_rubygems_version = ">=1.3.6"
  s.rubyforge_project         = "vagrant-vmhosts"

  s.add_dependency "vagrant", "~> 1.0.0"

  s.files         = Dir.glob("lib/**/*") + %w(LICENSE README.md)
  s.require_paths = ["lib"]
  s.extra_rdoc_files = ["LICENSE", "README.md"]
end
