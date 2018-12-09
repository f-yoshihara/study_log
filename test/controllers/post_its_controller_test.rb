require 'test_helper'

class PostItsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get post_its_index_url
    assert_response :success
  end

  test "should get show" do
    get post_its_show_url
    assert_response :success
  end

  test "should get new" do
    get post_its_new_url
    assert_response :success
  end

  test "should get edit" do
    get post_its_edit_url
    assert_response :success
  end

end
