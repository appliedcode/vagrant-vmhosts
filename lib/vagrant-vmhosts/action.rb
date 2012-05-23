module VagrantVmHosts
  class Action
    def initialize(app, env)
      @app = app
    end

    def call(env)
      @app.call(env)

      hosts = env[:vm].config.vmhosts.list
      env[:ui].info I18n.t("vagrant.plugins.vmhosts.adding")
      hosts.each do |host|
        if !env[:vm].channel.test("grep '^#{host['ip']}[[:space:]]' /etc/hosts")
          env[:vm].channel.sudo("printf '%s\t%s %s\n' '#{host['ip']}' '#{host['canonical']}' '#{host['aliases'].join(' ')}' >> /etc/hosts")
        end
      end
    end
  end
end

