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

  def test_can_add_pet_to_customer_array
    @customer.add_pet(@new_pet)
    assert_equal(1, @customer.pet_count)
  end

  def test_pets_total_value
    @customer.add_pet(@new_pet)
    @customer.add_pet(@new_pet)
    assert_equal(1000, @customer.get_total_value_of_pets())
  end

end
