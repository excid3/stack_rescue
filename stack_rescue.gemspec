# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stack_rescue/version'

Gem::Specification.new do |spec|
  spec.name          = "stack_rescue"
  spec.version       = StackRescue::VERSION
  spec.authors       = ["Chris Oliver"]
  spec.email         = ["excid3@gmail.com"]
  spec.summary       = %q{Automatically searches Google for exceptions raised in your Rails application}
  spec.description   = %q{Rails apps can automatically see Google search results for the exception that was just raised in their Rails logs}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "google-search", "~> 1.0.3"
  spec.add_dependency "colorize", "~> 0.7.3"
end
