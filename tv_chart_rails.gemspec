# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tv_chart_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "tv_chart_rails"
  spec.version       = TvChartRails::VERSION
  spec.authors       = ["Bob Wang"]
  spec.email         = ["mualucky@gmail.com"]
  spec.summary       = %q{TradingView Chart Library Gem.}
  spec.description   = %q{A Financial Chart Library Gem.}
  spec.homepage      = "https://github.com/bobstar6/tv_chart_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
