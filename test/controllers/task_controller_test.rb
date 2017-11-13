require 'test_helper'

class TaskControllerTest < ActionDispatch::IntegrationTest
  test "should get Tasks" do
    get task_Tasks_url
    assert_response :success
  end

end
