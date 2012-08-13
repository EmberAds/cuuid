Gem::Specification.new do |s|
  s.name = "cuuid"
  s.version = "0.3.1"
  s.author = "Caius Durling"
  s.email = "caius@emberads.com"
  s.homepage = "http://github.com/EmberAds/cuuid"
  s.platform = Gem::Platform::RUBY
  s.summary = "Ruby wrapper for the uuid library in your OS."
  s.files = Dir["ext/**/*", "lib/**/*.rb", "[A-Z]*"].to_a
  s.extensions = Dir["ext/**/extconf.rb"]

  s.add_development_dependency "rake-compiler"
  s.add_development_dependency "rspec"
  s.has_rdoc = false
end
