# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fidor_schema_version'

Gem::Specification.new do |spec|
  spec.name = 'fidor_schema'
  spec.version = Fidor::Schema::VERSION
  spec.authors = ['Georg Leciejewski']
  spec.email = 'dev@fidor.de'
  spec.summary = 'BETA Fidor API - JSON Schema'
  spec.description = %q{Fidor API description. Using JSON Schema to describe the available objects, their fields and resource links. Beware of the BETA status, as things can change slightly}
  spec.homepage = 'https://www.fidor.de'
  spec.license = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject{|i| i[/^docs\//] }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'activesupport'
  spec.add_development_dependency 'json_schema_tools', '>=0.3.3'
  spec.add_development_dependency 'activemodel' # required by above
  spec.add_development_dependency 'rake'

end
