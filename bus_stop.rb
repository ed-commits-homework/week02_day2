class BusStop
  attr_reader :name

  def initialize(name)
    @name = name
    @queue = []
  end

  def count_passengers
    return @queue.length
  end

  def add_person(passenger)
    @queue << passenger
  end
end
