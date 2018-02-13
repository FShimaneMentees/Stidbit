require 'test_helper'

class TidbitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tidbits_index_url
    assert_response :success
  end

end
