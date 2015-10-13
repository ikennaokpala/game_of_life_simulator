require "spec_helper"

describe Rules::LessThanTwo do
  describe "#apply" do
    let(:opinion){:soft}

    context "when my opinionated neighbours are less than 2" do
      let(:neighbours){[:soft, :none, :none]}
      let(:rule) {
        Rules::LessThanTwo.new(opinion, neighbours) }

        it "should no longer have any opinions" do
          expect(rule.apply()).to eq(:none)
        end
    end

    context "when my neighbours are opinionated, having at least 3 opinions" do
      let(:neighbours){[:soft, :soft, :hard]}
      let(:rule) {
        Rules::LessThanTwo.new(opinion, neighbours) }

        it "shoule return :soft" do
          expect(rule.apply()).to eq(:soft)
        end
    end

  end
end
