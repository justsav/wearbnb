require 'test_helper'

class ClothingItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clothing_items_index_url
    assert_response :success
  end

  test "should get show" do
    get clothing_items_show_url
    assert_response :success
  end

  test "should get home" do
    get clothing_items_home_url
    assert_response :success
  end

end
