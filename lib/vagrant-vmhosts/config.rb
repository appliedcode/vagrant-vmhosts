module VagrantVmHosts
  class Config < Vagrant::Config::Base
    attr_accessor :list

    def validate(errors)
      # check hash format
    end
  end
end
