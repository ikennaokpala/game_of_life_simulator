require "opinion"

module Rules
  class LessThanTwo < Base
    
    def apply
      if @opinion.valid? && @opinion.neighbours < 2
        return :none
      end

      @opinion.stance
    end

  end
end
