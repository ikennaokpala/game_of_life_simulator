require "spec_helper"

describe Opinion do

  describe "#find" do
    let(:opinion){:soft}
    let(:neighbours){[:soft, :soft, :none, :none]}
    context "when a block is given" do
      it "returns a none empty collection" do
        expect(Opinion.new(opinion, neighbours).find{|op| op ==:soft}).to eq(2)
      end
    end

    context "when a block is not given" do
      it "returns and empty array if block is not given" do
        expect(Opinion.new(opinion, neighbours).find).to eq([])
      end
    end
  end
end
