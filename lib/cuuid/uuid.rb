require "cuuid"

# For compatibility with the UUID gem
module UUID
  def self.generate
    CUUID.generate.downcase
  end
end
