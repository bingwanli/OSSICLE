require 'test_helper'

class ShoesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shoes_index_url
    assert_response :success
  end

  test "should get new" do
    get shoes_new_url
    assert_response :success
  end

  test "should get create" do
    get shoes_create_url
    assert_response :success
  end

end
