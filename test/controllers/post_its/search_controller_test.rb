require 'test_helper'

class PostIts::SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get post_its_search_index_url
    assert_response :success
  end

end
