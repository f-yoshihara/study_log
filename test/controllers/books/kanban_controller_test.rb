require 'test_helper'

class Books::KanbanControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get books_kanban_index_url
    assert_response :success
  end

end
