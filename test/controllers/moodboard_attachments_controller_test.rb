require 'test_helper'

class MoodboardAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moodboard_attachment = moodboard_attachments(:one)
  end

  test "should get index" do
    get moodboard_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_moodboard_attachment_url
    assert_response :success
  end

  test "should create moodboard_attachment" do
    assert_difference('MoodboardAttachment.count') do
      post moodboard_attachments_url, params: { moodboard_attachment: { image: @moodboard_attachment.image, moodboard_id: @moodboard_attachment.moodboard_id } }
    end

    assert_redirected_to moodboard_attachment_url(MoodboardAttachment.last)
  end

  test "should show moodboard_attachment" do
    get moodboard_attachment_url(@moodboard_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_moodboard_attachment_url(@moodboard_attachment)
    assert_response :success
  end

  test "should update moodboard_attachment" do
    patch moodboard_attachment_url(@moodboard_attachment), params: { moodboard_attachment: { image: @moodboard_attachment.image, moodboard_id: @moodboard_attachment.moodboard_id } }
    assert_redirected_to moodboard_attachment_url(@moodboard_attachment)
  end

  test "should destroy moodboard_attachment" do
    assert_difference('MoodboardAttachment.count', -1) do
      delete moodboard_attachment_url(@moodboard_attachment)
    end

    assert_redirected_to moodboard_attachments_url
  end
end
