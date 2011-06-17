# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "embed-assets-rails/version"

Gem::Specification.new do |s|
  s.name        = "embed-assets-rails"
  s.version     = Saulabs::EmbedAssets::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["kommen"]
  s.email       = ["dieter@komendera.com"]
  s.homepage    = "http://www.saulabs.net/"
  s.summary     = %q{Embed images and fonts in CSS files with the Rails asset pipeline }
  s.description = %q{This gem provides integration of embedding images and fonts as base64 into CSS files within the Rails asset pipeline.
  More about embedding assets and how it works, see the [jammit documentation][1]. This gem actually reuses code from that project.}

  s.rubyforge_project = "embed-assets-rails"

  s.add_runtime_dependency 'railties',   '~> 3.1.0.rc1'
  s.add_runtime_dependency 'actionpack', '~> 3.1.0.rc1'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
