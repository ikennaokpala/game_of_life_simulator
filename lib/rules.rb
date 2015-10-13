require "rules/base"
require "rules/hard"
require "rules/soft"
require "rules/less_than_two"
require "rules/drowned"

module Rules

  def self.validate(opinion, neighbours)
    available(opinion, neighbours).each do |rule|
      if opinion != rule.apply
        opinion = rule.apply
        break
      end
    end
    opinion
  end

  def self.available(opinion, neighbours)
    [Hard.new(opinion, neighbours), Soft.new(opinion, neighbours), LessThanTwo.new(opinion, neighbours), Drowned.new(opinion, neighbours)]
  end
end
