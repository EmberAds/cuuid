require File.expand_path("cuuid_generator", File.dirname(__FILE__))

module CUUID

  # backwards compatible (& lazy)
  def self.generate
    Generator.generate
  end
end
