require File.expand_path("lib/cuuid/version", File.dirname(__FILE__))

Gem::Specification.new do |s|
  s.name = "cuuid"
  s.version = CUUID::VERSION
  s.author = "Caius Durling"
  s.email = "caius@emberads.com"
  s.homepage = "http://github.com/EmberAds/cuuid"
  s.platform = Gem::Platform::RUBY
  s.summary = "Ruby wrapper for the uuid library in your OS."
  s.files = Dir["ext/**/*", "lib/**/*.rb", "[A-Z]*"].to_a

  if RUBY_PLATFORM["java"]
    s.platform = "java"
    s.files << "lib/cuuid_generator.jar"
  else
    s.extensions = Dir["ext/**/extconf.rb"]
  end

  s.add_development_dependency "rake"
  s.add_development_dependency "rake-compiler"
  s.add_development_dependency "rspec"
  s.has_rdoc = false
end
