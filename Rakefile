require "rake/extensiontask"
require "rubygems/package_task"

spec = Gem::Specification.new do |s|
  s.name = "cuuid"
  s.version = "0.3.0"
  s.author = "Caius Durling"
  s.email = "caius@emberads.com"
  s.homepage = "http://github.com/EmberAds/cuuid"
  s.platform = Gem::Platform::RUBY
  s.summary = "Ruby wrapper for the uuid library in your OS."
  s.files = FileList["ext/**/*", "lib/**/*.rb", "[A-Z]*"].to_a
  s.extensions = FileList["ext/**/extconf.rb"]

  s.add_development_dependency "rake-compiler"
  s.add_development_dependency "rspec"
  s.has_rdoc = false
end

Gem::PackageTask.new(spec) {}
Rake::ExtensionTask.new('cuuid', spec)
