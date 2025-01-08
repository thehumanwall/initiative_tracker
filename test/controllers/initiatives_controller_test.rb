require "test_helper"

class InitiativesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get initiatives_new_url
    assert_response :success
  end

  test "should get create" do
    get initiatives_create_url
    assert_response :success
  end

  test "should get update" do
    get initiatives_update_url
    assert_response :success
  end

  test "should get edit" do
    get initiatives_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get initiatives_destroy_url
    assert_response :success
  end

  test "should get index" do
    get initiatives_index_url
    assert_response :success
  end
end
