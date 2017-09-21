require 'test_helper'

class DeletingTemperaturesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end 
  setup do
    @temp = Temperature.create!(:sensor_voltage => 50.00, :celcius => 17.50)
  end
  
  test "delete a measurement" do
    delete "/api/temperatures/#{@temp.id}" 
    assert_equal 204, response.status
  end
    
end
