# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gem_1/version'

Gem::Specification.new do |spec|
  spec.name          = "gem_1"
  spec.version       = Gem1::VERSION
  spec.authors       = ["gaara"]
  spec.email         = ["realwol@gmail.com"]
  spec.description   = %q{first gem to me}
  spec.summary       = %q{learn to build a gem}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
