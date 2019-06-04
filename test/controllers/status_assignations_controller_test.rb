require 'test_helper'

class StatusAssignationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get status_assignations_show_url
    assert_response :success
  end

  test "should get new" do
    get status_assignations_new_url
    assert_response :success
  end

  test "should get create" do
    get status_assignations_create_url
    assert_response :success
  end

end
