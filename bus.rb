class Bus
  attr_reader :route_number, :distination

  def initialize(route_number, distination)
    @route_number = route_number
    @distination = distination
  end
end
