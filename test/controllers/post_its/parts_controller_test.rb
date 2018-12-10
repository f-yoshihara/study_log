require 'test_helper'

class PostIts::PartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get post_its_parts_index_url
    assert_response :success
  end

  test "should get new" do
    get post_its_parts_new_url
    assert_response :success
  end

end
