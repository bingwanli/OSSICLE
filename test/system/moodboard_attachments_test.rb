require "application_system_test_case"

class MoodboardAttachmentsTest < ApplicationSystemTestCase
  setup do
    @moodboard_attachment = moodboard_attachments(:one)
  end

  test "visiting the index" do
    visit moodboard_attachments_url
    assert_selector "h1", text: "Moodboard Attachments"
  end

  test "creating a Moodboard attachment" do
    visit moodboard_attachments_url
    click_on "New Moodboard Attachment"

    fill_in "Image", with: @moodboard_attachment.image
    fill_in "Moodboard", with: @moodboard_attachment.moodboard_id
    click_on "Create Moodboard attachment"

    assert_text "Moodboard attachment was successfully created"
    click_on "Back"
  end

  test "updating a Moodboard attachment" do
    visit moodboard_attachments_url
    click_on "Edit", match: :first

    fill_in "Image", with: @moodboard_attachment.image
    fill_in "Moodboard", with: @moodboard_attachment.moodboard_id
    click_on "Update Moodboard attachment"

    assert_text "Moodboard attachment was successfully updated"
    click_on "Back"
  end

  test "destroying a Moodboard attachment" do
    visit moodboard_attachments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Moodboard attachment was successfully destroyed"
  end
end
