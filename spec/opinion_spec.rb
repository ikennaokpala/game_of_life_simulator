require "spec_helper"

describe Opinion do

  let(:opinion){:soft}
  let(:neighbours){[:soft, :soft, :none, :none]}
  describe "#find" do
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

  describe "#valid?" do
    context "when the opinion is hard or soft " do
      it "returns true" do
        expect(Opinion.new(:hard, neighbours).valid?).to eq(true)
        expect(Opinion.new(:soft, neighbours).valid?).to eq(true)
      end
    end

    context "when the opinion is not hard or soft" do
      it "returns false" do
        expect(Opinion.new(:none, neighbours).valid?).to eq(false)
      end
    end
  end
end
