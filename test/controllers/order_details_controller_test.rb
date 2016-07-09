require 'test_helper'

class OrderDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get order_details_add_url
    assert_response :success
  end

end
