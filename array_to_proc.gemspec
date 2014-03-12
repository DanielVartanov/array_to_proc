# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'array/to_proc/version'

Gem::Specification.new do |spec|
  spec.name          = "array_to_proc"
  spec.version       = ArrayToProc::VERSION
  spec.authors       = ["Daniel Vartanov"]
  spec.email         = ["dan@vartanov.net"]
  spec.summary       = %q{`users.map &[:created_at, :utc]` instead of `users.map(&:created_at).map(&:utc)` or `users.map { |user| user.created_at.utc }`}
  spec.description   = %q{This gem adds `#to_proc` method to Array, which works similarly to Symbol#to_proc, but calls provided methods in sequence.}
  spec.homepage      = "https://github.com/DanielVartanov/array_to_proc"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0.beta"
end
