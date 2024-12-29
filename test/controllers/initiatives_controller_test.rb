require "test_helper"

class InitiativesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get initiatives_index_url
    assert_response :success
  end
end
