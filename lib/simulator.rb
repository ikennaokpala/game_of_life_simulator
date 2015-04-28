class Simulator

  def initialize(seating_arrangement)
    raise NotImplementedError
  end

  def verdict
    raise NotImplementedError
  end

  def state
    raise NotImplementedError
  end

  def next
    raise NotImplementedError
  end

end
