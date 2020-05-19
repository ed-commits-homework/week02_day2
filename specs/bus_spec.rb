require("minitest/autorun")
require("minitest/reporters")
require_relative("../bus")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBus < MiniTest::Test
  def setup()
    @bus1 = Bus.new(22, "Ocean Terminal")
  end

  def test_create_bus()
    assert_equal(22, @bus1.route_number)
    assert_equal("Ocean Terminal", @bus1.distination)
  end

  def test_drive()
    assert_equal("Brum brum", @bus1.drive)
  end

  def test_passengers_starts_empty()
    assert_equal([], @bus1.passengers)
  end
end
