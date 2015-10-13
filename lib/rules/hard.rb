require "opinion"

module Rules
  class Hard

    def initialize(opinion, neighbours)
      @opinion = Opinion.new(opinion, neighbours)
    end

    def apply
      if validated?
        return :hard
      end
      @opinion.stance
    end

  protected
    def validated?
      !@opinion.valid? && @opinion.neighbours == 3 && @opinion.find{|op| op==:hard} == 2
    end
  end
end
