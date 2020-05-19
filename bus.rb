class Bus
  attr_reader :route_number, :distination, :passengers

  def initialize(route_number, distination)
    @route_number = route_number
    @distination = distination
    @passengers = []
  end

  def drive
    return "Brum brum"
  end

  def pick_up(passenger)
    @passengers << passenger
  end

  def count_passengers()
    return @passengers.length
  end

  def drop_of_passengers(passenger)
    @passengers.delete(passenger)
  end

  def empty
    @passengers = []
  end

  def pick_up_from_stop(stop)
    for passenger in stop.queue
      @passengers.push(passenger)
    end
    stop.empty
  end
end
