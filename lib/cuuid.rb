require File.expand_path("cuuid_generator", File.dirname(__FILE__))

module CUUID

  if RUBY_PLATFORM["java"]
    require "jruby"
    include_package 'com.emberads.cuuid'
    Generator = Java::ComEmberadsCuuid::Generator
  end

  # backwards compatible (& lazy)
  def self.generate
    Generator.generate
  end

end
