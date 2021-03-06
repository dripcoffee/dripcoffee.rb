# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'drip_coffee/version'

Gem::Specification.new do |spec|
  spec.name          = "dripcoffee.rb"
  spec.version       = DripCoffee::VERSION
  spec.authors       = ["David Zhang"]
  spec.email         = ["crispgm@gmail.com"]
  spec.summary       = "A simple personal accounting system"
  spec.homepage      = "https://github.com/dripcoffee/dripcoffee.rb"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.2.5'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "shoulda-context"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 1.0.0"
end