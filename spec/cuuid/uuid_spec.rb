require "cuuid/uuid"

describe UUID do
  it { UUID.should respond_to(:generate) }
  describe "#generate" do
    it "should return a uuid" do
      uuid = UUID.generate
      uuid.should be_a_kind_of(String)
      uuid.size.should be == 36
    end
    it "should be a downcased string" do
      UUID.generate.should_not =~ /[A-Z]/
    end
  end
end
