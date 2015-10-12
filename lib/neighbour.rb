class Neighbour
  def initialize(seating_arrangement)
    @seating_arrangement = seating_arrangement
  end

  def find(x, y)
    [].tap do |n|
      n << north_west(x, y)
      n << north(x, y)
      n << north_east(x, y)
      n << west(x, y)
      n << east(x, y)
      n << south_west(x, y)
      n << south(x, y)
      n << south_east(x, y)
    end.compact
  end

  def south(x, y)
    if(x < @seating_arrangement.length - 1)
      @seating_arrangement[x + 1][y]
    end
  end

  def south_west(x, y)
    if(x < @seating_arrangement.length - 1 && y > 0)
      @seating_arrangement[x + 1][y - 1]
    end
  end

  def south_east(x, y)
    if(x < @seating_arrangement.length - 1 && y < @seating_arrangement[0].length - 1)
      @seating_arrangement[x + 1][y + 1]
    end
  end

  def east(x, y)
    if(y < @seating_arrangement[0].length - 1)
      @seating_arrangement[x][y + 1]
    end
  end

  def west(x, y)
    if(y > 0)
      @seating_arrangement[x][y - 1]
    end
  end

  def north(x, y)
    if(x > 0)
      @seating_arrangement[x - 1][y]
    end
  end

  def north_west(x, y)
    if(x > 0 && y > 0)
      @seating_arrangement[x - 1][y - 1]
    end
  end

  def north_east(x, y)
    if(x > 0 && y < @seating_arrangement[0].length - 1)
      @seating_arrangement[x - 1][y + 1]
    end
  end

end
