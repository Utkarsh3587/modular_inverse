# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'modular_inverse/version'

Gem::Specification.new do |spec|
  spec.name          = "modular_inverse"
  spec.version       = ModularInverse::VERSION
  spec.authors       = ["Utkarsh"]
  spec.email         = ["soniutkarsh91@gmail.com"]

  spec.summary       = %q{This gem is used to calculate Modular multiplicative inverse for given two numbers\
                          a, m, find x such that a * x modulo 1 (mod m) }
  spec.description   = %q{Given two integers ‘a’ and ‘m’, find modular multiplicative inverse of ‘a’ under modulo ‘m’.
                          The modular multiplicative inverse is an integer ‘x’ such that.
                          a x ≡ 1 (mod m)  and x belongs to [0,1,2, .. m-1] }
  spec.homepage      = ""
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency 'engtagger'
end
