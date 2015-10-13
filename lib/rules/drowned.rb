require "opinion"

module Rules
  class Drowned < Base
    
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
