# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pokey_runner/version'

Gem::Specification.new do |spec|
  spec.name          = "pokey_runner"
  spec.version       = PokeyRunner::VERSION
  spec.authors       = ["Chuck Callebs"]
  spec.email         = ["chuck@callebs.io"]

  spec.summary       = %q{Standalone application for simulating production webhooks and other API requests.}
  spec.homepage      = "https://github.com/ccallebs/pokey_runner"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rufus-runner', "~> 0.1.0"
  spec.add_runtime_dependency 'thor', "~> 0.19"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
