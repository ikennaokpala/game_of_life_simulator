require "spec_helper"

describe Neighbour do
  describe "#find" do
    context "seating arrangement" do
      let(:neighbour) { Neighbour.new(SEATING_ARRANGEMENT) }

      it "locates neighbour South" do
        south = neighbour.find(1, 1)
        expect(south[6]).to eq(:soft)
      end

      it "locates neighbour South West" do
        south_west = neighbour.find(1, 1)
        expect(south_west[5]).to eq(:none)
      end

      it "locates neighbour South East" do
        south_east = neighbour.find(1, 1)
        expect(south_east[7]).to eq(:hard)
      end

      it "locates neighbour East" do
        east = neighbour.find(1, 1)
        expect(east[3]).to eq(:hard)
      end

      it "locates neighbour West" do
        west = neighbour.find(1, 1)
        expect(west[4]).to eq(:soft)
      end

      it "locates neighbour North" do
        north = neighbour.find(1,1)
        expect(north[1]).to eq(:hard)
      end

      it "locates neighbour North West" do
        north_west = neighbour.find(1,1)
        expect(north_west[0]).to eq(:soft)
      end

      it "locates neighbour North East " do
        north_east = neighbour.find(1,1)
        expect(north_east[2]).to eq(:none)
      end

      it "can't find a Northern neighbour when in the top row" do
        north = neighbour.north(0,0)
        expect(north).to eq(nil)
      end

      it "can't find a North East neighbour when in the first column" do
        north_east = neighbour.north_east(0, 0)
        expect(north_east).to eq(nil)
      end

      it "can't find a Eastern neighbour when in the last column" do
        east = neighbour.east(2, 2)
        expect(east).to eq(nil)
      end

      it "can't find a South West neighbour when in the first column" do
        south_west = neighbour.south_west(0, 0)
        expect(south_west).to eq(nil)
      end

      it "has three neighbours located in the north west corner" do
        neighbours = neighbour.find(0,0)
        expect(neighbours.length).to eq(3)
        expect(neighbours).to eq([:hard, :hard, :none])
      end

      it "can't find a Southern neighbour when in the bottom row" do
        south = neighbour.south(2,0)
        expect(south).to eq(nil)
      end

      it "can't find a Western neighbour when in the first column" do
        west = neighbour.west(0, 0)
        expect(west).to eq(nil)
      end

      it "finds expected neighbours" do
        neighbours = neighbour.find(1,0)
        expect(neighbours.length).to eq(5)
        expect(neighbours).to eq([:soft, :hard, :none, :none, :soft])
      end
    end
  end
end
