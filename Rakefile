spec = Gem::Specification.load("cuuid.gemspec")

require "rubygems/package_task"
Gem::PackageTask.new(spec) {}

if RUBY_PLATFORM["java"]
  require "rake/javaextensiontask"
  Rake::JavaExtensionTask.new("cuuid_generator", spec)
else
  require "rake/extensiontask"
  Rake::ExtensionTask.new("cuuid_generator", spec)
end
