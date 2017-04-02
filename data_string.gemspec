# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'data_string/version'

Gem::Specification.new do |spec|
  spec.name          = "data_string"
  spec.version       = DataString::VERSION
  spec.authors       = ["Raul"]
  spec.email         = ["gem@odaga.com.br"]

  spec.summary       = %q{Parse API string response.}
  spec.homepage      = "https://github.com/odaguiri/data_string"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
