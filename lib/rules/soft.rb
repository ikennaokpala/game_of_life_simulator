require "opinion"

module Rules
  class Soft

    def initialize(opinion, neighbours)
      @opinion = Opinion.new(opinion, neighbours)
    end

    def apply
      if validated?
        return :soft
      end
      @opinion.stance
    end

  protected
    def validated?
      !@opinion.valid? && @opinion.neighbours == 3 && @opinion.find{|op| op==:soft} == 2
    end

  end
end
