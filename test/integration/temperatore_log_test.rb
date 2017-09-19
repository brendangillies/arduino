require 'test_helper'

class TemperatoreLogTest < ActionDispatch::IntegrationTest 
  setup do 
    Temperature.create!(sensor_voltage: 50.00, celcius: 17.00)
    Temperature.create!(sensor_voltage: 51.00, celcius: 17.50)
  end
  
  test "listing temperatures" do 
    get '/temperatures' 
    assert_equal 200, response.status
    assert_equal Mime[:json], response.content_type 
    assert_equal Temperature.count, json(response.body).size
  end  
  
end
