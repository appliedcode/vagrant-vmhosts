module VagrantVmHosts
  class Config < Vagrant::Config::Base
    attr_accessor :list
  end
end
