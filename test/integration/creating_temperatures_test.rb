require 'test_helper'

class CreatingTemperaturesTest < ActionDispatch::IntegrationTest
  test 'creates new temperatures' do 
    post '/temperatures', params: {temperature: {sensor_voltage: 50.00, temperature: 17.00}}.to_json, headers: {'Accept' => 'application/json', 'Content-Type' => 'application/json'} 
    assert_equal 201, response.status 
    assert_equal Mime[:json], response.content_type
    temp = json(response.body)
    assert_equal temperature_url(temp[:id]), response.location
  end
  
end