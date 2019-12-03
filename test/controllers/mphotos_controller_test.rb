require 'test_helper'

class MphotosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mphotos_new_url
    assert_response :success
  end

  test "should get create" do
    get mphotos_create_url
    assert_response :success
  end

  test "should get delete" do
    get mphotos_delete_url
    assert_response :success
  end

  test "should get update" do
    get mphotos_update_url
    assert_response :success
  end

end
