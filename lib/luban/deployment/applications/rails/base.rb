require 'luban/rack'

module Luban
  module Deployment
    module Applications
      class Rails < Luban::Deployment::Applications::Rack
        module Parameters
          extend Luban::Deployment::Parameters::Base

          parameter :assets_precompile

          protected

          def set_default_rails_parameters
            set_default :assets_precompile, true
          end
        end

        include Parameters

        protected

        def set_default_application_parameters
          super
          set_default_rails_parameters
        end

        def include_default_templates_path
          super
          default_templates_paths.unshift(base_templates_path(__FILE__))
        end
      end
    end
  end
end