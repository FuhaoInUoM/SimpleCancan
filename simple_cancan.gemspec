# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_cancan/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_cancan"
  spec.version       = SimpleCancan::VERSION
  spec.authors       = ["Tianliang Bai", "Fuhao Xu"]
  spec.email         = ["happybyronbai@gmail.com", "xufuhaomap@gmail.com"]

  spec.summary       = "A simpler cancan for padrino"
  spec.description   = "A simpler cancan for padrino"
  spec.homepage      = "https://rubygems.org/gems/simple_cancan"
  spec.license       = "MIT"

  spec.files         = ["lib/simple_cancan.rb", "lib/simple_cancan/ability.rb", "lib/simple_cancan/controller_additions.rb", "lib/simple_cancan/exceptions.rb", "lib/simple_cancan/rule.rb", "lib/simple_cancan/version.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
