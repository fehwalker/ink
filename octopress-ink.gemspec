# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octopress-ink/version'

Gem::Specification.new do |spec|
  spec.name          = "octopress-ink"
  spec.version       = Octopress::Ink::VERSION
  spec.authors       = ["Brandon Mathis"]
  spec.email         = ["brandon@imathis.com"]
  spec.description   = %q{A framework creating Jekyll/Octopress themes and plugins}
  spec.summary       = %q{A framework creating Jekyll/Octopress themes and plugins}
  spec.homepage      = "https://github.com/octopress/ink"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jekyll", "~> 2.0"
  spec.add_runtime_dependency "uglifier", "~> 2.5"
  spec.add_runtime_dependency "octopress-hooks", "~> 2.2"
  spec.add_runtime_dependency "octopress-include-tag", "~> 1.0"
  spec.add_runtime_dependency "octopress-filters", "~> 1.1"
  spec.add_runtime_dependency "octopress"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "bundler", "~> 1.6", "<= 1.6.2"
  spec.add_development_dependency "pry-debugger"
  spec.add_development_dependency "clash"
end
