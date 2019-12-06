class Moodboard < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :moodboard_attachments
  accepts_nested_attributes_for :moodboard_attachments
  acts_as_taggable_on :tags

  validates :shoe_type, presence: true
  validates :is_finished, inclusion: { in: [true, false] }
  validates :votes, numericality: { only_integer: true, allow_nil: true }
  validates :detail, presence: true
  validates :title, presence: true
end
