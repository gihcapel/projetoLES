require 'test_helper'

class CardapiosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cardapios_new_url
    assert_response :success
  end

end
