# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'diego/version'

Gem::Specification.new do |spec|
  spec.name          = "diego"
  spec.version       = Diego::VERSION
  spec.authors       = ["Diego Diaz"]
  spec.email         = ["ddiaz@swat-it.co"]
  spec.summary       = %q{diego}
  spec.description   = %q{descripcion gema diego}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
