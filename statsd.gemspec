# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "statsd/version"

Gem::Specification.new do |s|
  s.name        = "statsd"
  s.version     = Statsd::VERSION
  s.authors     = ["Andrew Coldham", "Ben VandenBos", "Grant Rodgers"]
  s.email       = ["quasor@me.com"]
  s.homepage    = "http://github.com/grantr/statsd"
  s.summary     = %q{Ruby version of statsd.}
  s.description = %q{A network daemon for aggregating statistics (counters and timers), rolling them up, then sending them to graphite, mongo, redis, or simple-db.}

  s.rubyforge_project = "statsd"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "eventmachine", [">= 0.12.10"]
  s.add_development_dependency "rake"
end
