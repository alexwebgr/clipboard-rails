# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aw_clipboard/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "aw-clipboard-rails"
  spec.version       = AwClipboard::Rails::VERSION
  spec.authors       = ["alexwebgr"]
  spec.email         = ["email@alex-web.gr"]

  spec.summary       = spec.description
  spec.description   = 'This gem provides the clipboard.js Javascript library for your Rails 5 application.'
  spec.homepage      = 'https://github.com/alexwebgr/clipboard-rails'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.5.1'
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 12.0"
end
