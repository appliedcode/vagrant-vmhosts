$:.unshift File.expand_path('../lib', __FILE__)
require 'vagrant-vmhosts/version'
require 'rubygems'

desc "Build a RubyGem package."
task :gem do
  sh %{gem build vagrant-vmhosts.gemspec}
end

desc "Upload the gem to RubyGems.org."
task :release => [:gem] do
  system "gem push vagrant-vmhosts-#{VagrantVmHosts::VERSION}.gem"
end

desc "Default task prints the available targets."
task :default do
  sh %{rake -T}
end
