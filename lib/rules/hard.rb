require "opinion"

module Rules
  class Hard < Base

    def apply
      if validated?
        return :hard
      end
      @opinion.stance
    end
  end
end
