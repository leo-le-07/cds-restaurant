require 'test_helper'

class OrderSuccessControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get order_success_show_url
    assert_response :success
  end

end
