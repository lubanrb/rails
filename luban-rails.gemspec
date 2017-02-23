# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'luban/deployment/applications/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "luban-rails"
  spec.version       = Luban::Deployment::Applications::RAILS_VERSION
  spec.authors       = ["Rubyist Chi"]
  spec.email         = ["rubyist.chi@gmail.com"]

  spec.summary       = %q{Rails support for Luban}
  spec.description   = %q{Luban::Rails is a Luban deployment application to manage Rails web application deployment and control}
  spec.homepage      = "https://github.com/lubanrb/rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.1.0"
  spec.add_dependency 'luban', ">= 0.12.8"
  spec.add_dependency 'luban-rack', ">= 0.2.25"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
