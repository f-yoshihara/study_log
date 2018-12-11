require 'test_helper'

class PostIts::TrashCanControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get post_its_trash_can_index_url
    assert_response :success
  end

end
