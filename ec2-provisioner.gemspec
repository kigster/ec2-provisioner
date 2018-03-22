# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ec2/provisioner/version'

Gem::Specification.new do |spec|
  spec.name          = 'ec2-provisioner'
  spec.version       = EC2::Provisioner::VERSION
  spec.authors       = ['Konstantin Gredeskoul']
  spec.email         = %w('kigster@gmail.com)
  spec.description   = %q{Wrapper gem around provisioning clusters of servers on ec2 cloud}
  spec.summary       = %q{Wrapper gem around provisioning clusters of servers on ec2 cloud}
  spec.homepage      = 'https://github.com/kigster/ec2-provisioner'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'mixlib-cli'
  spec.add_dependency 'chef'
  spec.add_dependency 'knife-ec2'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry-nav'
  spec.add_development_dependency 'aruba-doubles'

end
