require "spec_helper"

describe Verdict do
  describe "#outcome" do

    context "when majority of opinionated people think gif is a hard g" do
      let(:seating_arrangement){[
                                 [:soft, :hard, :none],
                                 [:hard, :none, :soft],
                                 [:hard, :soft, :hard],
                                ]}
      let(:verdict) { Verdict.new(seating_arrangement) }

      it "returns :hard" do
        expect(verdict.outcome()).to eq(:hard)
      end
    end

    context "when majority of opinionated people think gif is a soft g" do
      let(:seating_arrangement){[
                                 [:soft, :soft, :soft],
                                 [:hard, :none, :soft],
                                 [:hard, :soft, :hard],
                                ]}
      let(:verdict) { Verdict.new(seating_arrangement) }

      it "returns :soft" do
        expect(verdict.outcome()).to eq(:soft)
      end
    end

    context "when opinions are at parity" do
      let(:seating_arrangement){[
                                 [:soft, :soft, :soft],
                                 [:soft, :none, :hard],
                                 [:hard, :hard, :hard],
                                ]}
      let(:verdict) { Verdict.new(seating_arrangement) }

      it "returns :push" do
        expect(verdict.outcome()).to eq(:push)
      end
    end

    context "when the majority is none" do
      let(:seating_arrangement){[
                                 [:soft, :hard, :none],
                                 [:none, :none, :soft],
                                 [:soft, :none, :hard]
                               ]}
      let(:verdict) { Verdict.new(seating_arrangement) }

      it "returns :soft" do
        expect(verdict.outcome()).to eq(:soft)
      end
    end
  end
end
