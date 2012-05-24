module VagrantVmHosts
  class Config < Vagrant::Config::Base
    attr_writer :list

    def list
      @list || []
    end

    def validate(env, errors)
      # check hash format
    end
  end
end
