require("minitest/autorun")
require("minitest/reporters")
require_relative("../bus")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBus < MiniTest::Test
end
