Gem::Specification.new do |s|
  s.name = %q{slideshare}
  s.version = "0.2.1"
	s.platform    = Gem::Platform::RUBY
	s.authors     = ["Saiku.es", "Russell Norris", "Andy Shen"]
  s.email       = %q{andy@shenie.info}
  s.homepage    = %q{http://github.com/shenie/slideshare}
  s.summary     = %q{Ruby interface for SlideShare API} 
  s.description = %q{TODO: Write a gem description}

	s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.rdoc_options = ["--charset=UTF-8"]
	s.add_runtime_dependency(%q<httparty>, [">= 0.8.1"])
	s.add_runtime_dependency(%q<curb>, [">= 0.7.15"])
	s.add_development_dependency "rspec", "~> 2.6"
	s.add_development_dependency "fakeweb", "~> 1.3"
	s.add_development_dependency "crack", "~> 0.3.1"
	s.add_development_dependency "timecop", "~> 0.3.5"

end
