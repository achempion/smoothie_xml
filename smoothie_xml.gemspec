# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smoothie_xml/version'

Gem::Specification.new do |spec|
  spec.name          = "smoothie_xml"
  spec.version       = SmoothieXml::VERSION
  spec.authors       = ["Boris Kuznetsov"]
  spec.email         = ["achempion@gmail.com"]
  spec.summary       = %q{Simple library for creating XML from JSON}
  spec.description   = %q{How to work with XML API without heartache}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
