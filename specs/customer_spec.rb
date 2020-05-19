require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pet')
require_relative('../customer')

class CustomerTest < MiniTest::Test

  def setup()
    @new_pet = Pet.new("Blue", :cat, "British Shorthair", 500)
    @customer = Customer.new("John", 1000)
  end

end
