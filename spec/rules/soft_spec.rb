require "spec_helper"

describe Rules::Soft do
  describe "#apply" do
    let(:opinion){:none}

    context "when someone without neighbours with an opinion  thinks Gif is pronounced with a soft G" do
      let(:neighbours){[:soft, :soft, :hard]}
      let(:rule) {
        Rules::Soft.new(opinion, neighbours) }

        it "changes opinion to soft" do
          expect(rule.apply()).to eq(:soft)
        end
    end

    context "when opinionated neighbours are less than 3" do
      let(:neighbours){[:soft, :hard, :none, :none]}
      let(:rule) {
        Rules::Soft.new(opinion, neighbours) }

        it "remains the same without an opinion" do
          expect(rule.apply()).to eq(:none)
        end
    end

  end
end
