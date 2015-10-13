class Verdict

  def initialize(seating_arrangement)
    @seating_arrangement = seating_arrangement
  end

  def outcome
    if opinions_that_prevail.count > 1
      :push
    else
      opinions_that_prevail.first
    end
  end

protected

  def opinions
    @opinions ||= entire_opinions.reject{|k,v| k == :none}
  end

  def entire_opinions
    @entire_opinions ||= @seating_arrangement.flatten.inject(Hash.new(0)) do |seed, opinion|
      seed[opinion] += 1
      seed
    end
  end

  def opinions_maximum
    @opinions_maximum ||= opinions.values.max
  end

  def opinions_that_prevail
    @opinions_that_prevail ||= opinions.select {|k,v| v == opinions_maximum}.keys
  end
end
