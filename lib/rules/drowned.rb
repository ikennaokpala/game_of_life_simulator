require "opinion"

module Rules
  class Drowned

    def initialize(opinion, neighbours)
      @opinion = Opinion.new(opinion, neighbours)
    end

    def apply
      if @opinion.valid?
        opinionated_neighbours = @opinion.neighbours

        if(opinionated_neighbours > 3)
          return :none
        end
      end

      @opinion.stance
    end

  end
end
