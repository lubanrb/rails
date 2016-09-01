module Luban
  module Deployment
    module Applications
      class Rails
        class Publisher < Luban::Deployment::Applications::Rack::Publisher
          def shell_command_prefix
            @shell_command_prefix ||= super.unshift("RAILS_ENV=#{stage}")
          end

          def after_publish
            super
            publish_assets! if publish_app?
          end

          protected

          def init
            super
            linked_files.push('database.yml', 'secrets.yml')
          end

          def publish_assets!
            compile_assets!
            cleanup_assets!
          end

          def compile_assets!
            execute(compose_command("rake assets:precompile"))
          end

          def cleanup_assets!
            execute(compose_command("rake assets:clean"))
          end
        end
      end
    end
  end
end
