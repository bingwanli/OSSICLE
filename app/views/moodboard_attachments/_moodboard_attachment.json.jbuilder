json.extract! moodboard_attachment, :id, :moodboard_id, :image, :created_at, :updated_at
json.url moodboard_attachment_url(moodboard_attachment, format: :json)
