spec = Gem::Specification.load("cuuid.gemspec")

require "rubygems/package_task"
Gem::PackageTask.new(spec) {}

require "rake/extensiontask"
Rake::ExtensionTask.new("cuuid", spec)
