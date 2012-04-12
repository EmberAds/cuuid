require "cuuid"

describe CUUID do
  describe "#generate" do
    it "should be a method" do
      CUUID.should respond_to(:generate)
    end
    it "should return a uuid" do
      uuid = CUUID.generate
      uuid.should be_a_kind_of(String)
      uuid.size.should be == 36
    end
  end
end
