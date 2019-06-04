require 'test_helper'

class TasksAssignationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get tasks_assignations_show_url
    assert_response :success
  end

  test "should get new" do
    get tasks_assignations_new_url
    assert_response :success
  end

  test "should get create" do
    get tasks_assignations_create_url
    assert_response :success
  end

end
