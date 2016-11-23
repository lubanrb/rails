module Luban
  module Deployment
    module Applications
      class Rails
        class Publisher < Luban::Deployment::Applications::Rack::Publisher
          def rails_version
            capture(bundle_command("rails --version")).gsub('Rails ', '')
          end

          def rails_version_match?(version)
            Gem::Requirement.new(version).satisfied_by?(Gem::Version.new(rails_version))
          end

          def after_publish
            super
            publish_assets! if publish_app? and task.result.status != :skipped and 
                               assets_precompile and rails_version_match?(">=3.1")
          end

          protected

          def publish_assets!
            compile_assets!
            cleanup_assets!
          end

          def compile_assets!
            execute(bundle_command("rake assets:precompile"))
          end

          def cleanup_assets!
            execute(bundle_command("rake assets:clean"))
          end
        end
      end
    end
  end
end
