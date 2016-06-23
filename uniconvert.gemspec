# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uniconvert/version'

Gem::Specification.new do |spec|
  spec.name          = "uniconvert"
  spec.version       = Uniconvert::VERSION
  spec.authors       = ["Ryan Priebe"]
  spec.email         = ["rpriebe@me.com"]

  spec.summary       = "Character converter (ASCII accented -> HTML friendly)"
  spec.description   = "Convert non-English accented characters to their HTML-friendly format."
  spec.homepage      = "https://rubygems.org/aapis/unicode-lang-converter"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "htmlentities", "~> 4.3.4"
  spec.add_runtime_dependency "unicode"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
