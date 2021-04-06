# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fixmvc/version'

Gem::Specification.new do |spec|
  spec.name          = "fixmvc"
  spec.version       = FIXMVC::VERSION
  spec.authors       = ["Fabiano Martins"]
  spec.email         = ["fabiano.paula.martins@gmail.com"]
  spec.summary       = "FIX MVC framework"
  spec.description   = "FIX MVC framework"
  spec.homepage      = "https://github.com/investtools/fixmvc"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "terminal-notifier-guard"
  spec.add_development_dependency "rubocop"
  spec.add_dependency "activesupport"
  spec.add_dependency 'quickfix_ruby'
end
