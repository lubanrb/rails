require 'luban/rack'

module Luban
  module Deployment
    module Applications
      class Rails < Luban::Deployment::Applications::Rack
        parameter :assets_precompile, default: true

        protected

        def set_default_for_rails_env
          env_vars[:rails_env] = stage
        end

        def include_default_templates_path
          super
          default_templates_paths.unshift(base_templates_path(__FILE__))
        end
      end
    end
  end
end