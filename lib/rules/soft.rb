require "opinion"

module Rules
  class Soft < Base

    def apply
      if validated?
        return :soft
      end
      @opinion.stance
    end
  end
end
