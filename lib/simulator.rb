require "rules"

class Simulator

  def initialize(seating_arrangement)
    @seating_arrangement = seating_arrangement
  end

  def verdict
    Verdict.new(@seating_arrangement).outcome
  end

  def state
    @seating_arrangement
  end

  def next
    @seating_arrangement = @seating_arrangement.each_with_index.map do |row,row_index|
      row.each_with_index.map do |column,column_index|
        Rules.validate(column, neighbour.find(row_index, column_index))
      end
    end
  end

protected
  def neighbour
    Neighbour.new(@seating_arrangement)
  end
end
