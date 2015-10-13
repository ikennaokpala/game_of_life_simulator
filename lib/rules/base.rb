module Rules
  class Base

    def initialize(opinion, neighbours)
      @opinion = Opinion.new(opinion, neighbours)
    end

    def apply
      if @opinion.valid? && @opinion.neighbours < 1
        return :none
      end

      @opinion.stance
    end

  protected
    def validated?
      !@opinion.valid? && @opinion.neighbours == 3 && @opinion.find{|op| op==name} == 2
    end

    def name
      self.class.name.split('::').last.downcase.to_sym
    end

  end
end
