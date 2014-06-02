# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'angular-csrf-cookie-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "angular-csrf-cookie-rails"
  spec.version       = AngularCSRFCookieRails::VERSION
  spec.authors       = ["Jeremy Ebler"]
  spec.email         = ["jebler@gmail.com"]
  spec.summary       = %q{Configure Rails to set AngularJS's XSRF-TOKEN cookie.}
  spec.description   = %q{Zero-Configuration XSRF protection with Rails and AngularJS}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.1"
  # spec.add_dependency "actionpack", ">= 3.1"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
