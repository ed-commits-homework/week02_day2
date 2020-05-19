require("minitest/autorun")
require("minitest/reporters")
require_relative("../bus_stop")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBusStop < MiniTest::Test
end
