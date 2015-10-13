require "spec_helper"

describe Rules::Drowned do
  describe "#apply" do
    let(:opinion){:soft}

    context "when my neighbours are opinionated, having more than 3 opinions" do
      let(:neighbours){[:soft, :hard, :hard, :soft]}
      let(:rule) {
        Rules::Drowned.new(opinion, neighbours) }

        it "has no opinion" do
          expect(rule.apply()).to eq(:none)
        end
    end

    context "when my neighbours opinion is less than three" do
      let(:neighbours){[:soft, :hard, :none, :none]}
      let(:rule) {
        Rules::Drowned.new(opinion, neighbours) }

        it "returns the same opinion without change" do
          expect(rule.apply()).to eq(:soft)
        end
    end

  end
end
