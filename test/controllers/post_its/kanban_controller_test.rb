require 'test_helper'

class PostIts::KanbanControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get post_its_kanban_index_url
    assert_response :success
  end

end
