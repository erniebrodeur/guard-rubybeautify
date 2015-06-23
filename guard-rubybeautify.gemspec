# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/rubybeautify/version'

Gem::Specification.new do |spec|
  spec.name          = "guard-rubybeautify"
  spec.version       = Guard::RubybeautifyVersion::VERSION
  spec.authors       = ["Ernie Brodeur"]
  spec.email         = ["ebrodeur@ujami.net"]

  spec.summary       = "Clean up ruby files with ruby beautify."
  spec.description   = "Automatically triggers ruby beautify against changes to attempt to clean them up."
  spec.homepage      = "https://github.com/erniebrodeur/guard-rubybeautify"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'guard-compat', '~> 1.1'
  spec.add_dependency 'ruby-beautify'

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
