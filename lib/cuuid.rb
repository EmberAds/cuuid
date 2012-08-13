require File.expand_path("cuuid_generator", File.dirname(__FILE__))

module CUUID

  if RUBY_PLATFORM["java"]
    require "jruby"
    import 'com.emberads.cuuid'
  end

  # backwards compatible (& lazy)
  def self.generate
    Generator.generate
  end

end
