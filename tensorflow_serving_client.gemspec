# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tensorflow_serving_client/version'

Gem::Specification.new do |spec|
  spec.name          = "tensorflow_serving_client"
  spec.version       = TensorflowServingClient::VERSION
  spec.authors       = ["Dominique d’Argent"]
  spec.email         = ["dominique.dargent@me.com"]

  spec.summary       = %q{A Ruby client library for Tensorflow Serving}
  spec.homepage      = "https://github.com/nubbel/tensorflow_serving_client-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'grpc', '~> 1.0', '>= 1.0.1'

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'grpc-tools', '~> 1.0', '>= 1.0.1'
end
