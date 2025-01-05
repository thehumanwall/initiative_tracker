require "test_helper"

class TeamsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get team_new_url
    assert_response :success
  end

  test "should create team" do
    post team_create_url
    assert_response :redirect
  end

  test "should get edit" do
    get team_edit_url
    assert_response :success
  end

  test "should update team" do
    patch team_update_url
    assert_response :redirect
  end

  test "should show team" do
    get team_url(id: 1)
    assert_response :success
  end

  test "should list teams" do
    get teams_url
    assert_response :success
  end

  test "should destroy team" do
    delete team_destroy_url(id: 1)
    assert_response :redirect
  end

  test "should destroy team" do
    delete team_destroy_url
    assert_response :redirect
  end
end
