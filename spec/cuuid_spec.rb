require "cuuid"

describe CUUID do
  it { CUUID.should respond_to(:generate) }
  describe "#generate" do
    it "should return a uuid" do
      uuid = CUUID.generate
      uuid.should be_a_kind_of(String)
      uuid.size.should be == 36
    end
  end
end
