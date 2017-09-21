require 'test_helper'

class TemperaturesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_temperatures_url
    assert_response :success
  end
end
