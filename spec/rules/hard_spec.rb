require "spec_helper"

describe Rules::Hard do
  describe "#apply" do
    let(:opinion){:none}

    context "when my neighbours think Gif is pronounced with a hard G" do
      let(:neighbours){[:soft, :hard, :hard]}
      let(:rule) {
        Rules::Hard.new(opinion, neighbours) }

        it "has no opinion" do
          expect(rule.apply()).to eq(:hard)
        end
    end

    context "when my neighbours opinion is less than three" do
      let(:neighbours){[:soft, :hard, :none, :none]}
      let(:rule) {
        Rules::Hard.new(opinion, neighbours) }

        it "has no opinion anymore" do
          expect(rule.apply()).to eq(:none)
        end
    end

    context "when my neighbours have opinions in equal amounts" do
      let(:neighbours){[:soft, :hard, :soft, :hard]}
      let(:rule) {
        Rules::Hard.new(opinion, neighbours) }

        it "remains the same" do
          expect(rule.apply()).to eq(:none)
        end
    end

  end
end
