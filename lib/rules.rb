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
    [Hard.new(opinion, neighbours)]
  end
end
