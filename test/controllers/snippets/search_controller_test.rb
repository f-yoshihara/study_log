require 'test_helper'

class Snippets::SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get snippets_search_index_url
    assert_response :success
  end

end
