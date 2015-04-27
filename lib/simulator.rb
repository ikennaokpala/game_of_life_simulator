class Simulator

  def initialize(arg)
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
