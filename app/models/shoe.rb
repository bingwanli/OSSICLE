class Shoe < ApplicationRecord
  belongs_to :moodboard
  belongs_to :user
end
