# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flipper/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "flipper-rails"
  spec.version       = Flipper::Rails::VERSION
  spec.authors       = ["Brendan Mulholland"]
  spec.email         = ["flipper-rails@bmulholland.ca"]
  spec.homepage      = 'http://github.com/bmulholland/flipper-rails'
  spec.summary       = %q{Feature flipper for ANYTHING... As long as it's made in Rails}
  spec.description   = %q{Feature flipper is the act of enabling/disabling features in your application, ideally without re-deploying or changing anything in your code base. Flipper makes this extremely easy to do with any backend you would like to use.}
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.extra_rdoc_files = %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "flipper"
  spec.add_dependency "railties"

  spec.add_development_dependency "bundler"
end
