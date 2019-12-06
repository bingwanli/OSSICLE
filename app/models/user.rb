class User < ApplicationRecord
  has_many :moodboards
  has_many :shoes
  has_many :comments
  mount_uploader :prof_pic, AvatarUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
