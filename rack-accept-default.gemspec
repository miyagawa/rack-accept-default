# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rack/accept_default/version"

Gem::Specification.new do |s|
  s.name        = "rack-accept-default"
  s.version     = Rack::AcceptDefaultVersion::VERSION
  s.authors     = ["Tatsuhiko Miyagawa"]
  s.email       = ["miyagawa@bulknews.net"]
  s.homepage    = "https://github.com/miyagawa/rack-accept-default"
  s.summary     = "Set default value for Accept: header when it is not present"
  s.description = "A tiny piece of Rack middleware to set the default Accept: header"

  s.rubyforge_project = "rack-accept-default"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
