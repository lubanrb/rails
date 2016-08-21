module Luban
  module Deployment
    module Applications
      class Rails
        class Publisher < Luban::Deployment::Application::Publisher
          protected

          def publish!
            super
            publish_assets!
          end

          def publish_assets!
            compile_assets!
            cleanup_assets!
          end

          def compile_assets!
            within(release_path) do
              execute(bundle_cmd, :exec, :rake, "assets:precompile")
            end
          end

          def cleanup_assets!
            within(release_path) do
              execute(bundle_cmd, :exec, :rake, "assets:clean")
            end
          end
        end
      end
    end
  end
end
