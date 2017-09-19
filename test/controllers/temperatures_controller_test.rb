require 'test_helper'

class TemperaturesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get temperatures_index_url
    assert_response :success
  end

end
