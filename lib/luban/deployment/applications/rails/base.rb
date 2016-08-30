require 'luban/rack'

module Luban
  module Deployment
    module Applications
      class Rails < Luban::Deployment::Applications::Rack
        protected

        def include_default_templates_path
          super
          default_templates_paths.unshift(base_templates_path(__FILE__))
        end
      end
    end
  end
end