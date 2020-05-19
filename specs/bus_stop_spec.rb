require("minitest/autorun")
require("minitest/reporters")
require_relative("../bus_stop")
require_relative("../person")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBusStop < MiniTest::Test
  def setup()
    @stop1 = BusStop.new("stop")
    @person1 = Person.new("Bob", 30)
    @person2 = Person.new("Alice", 31)
  end

  def test_add_person
    @stop1.add_person(@person1)
    @stop1.add_person(@person2)
    assert_equal(2, @stop1.count_passengers)
  end
end
