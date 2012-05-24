module VagrantVmHosts
  class Config < Vagrant::Config::Base
    attr_accessor :list

    def validate(env, errors)
      # check hash format
    end
  end
end
