require "opinion"

module Rules
  class LessThanTwo

    def initialize(opinion, neighbours)
      @opinion = Opinion.new(opinion, neighbours)
    end

    def apply
      if @opinion.valid? && @opinion.neighbours < 2
        return :none
      end

      @opinion.stance
    end

  end
end
