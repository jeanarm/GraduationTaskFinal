class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :question
  mount_uploader :image, ImageUploader
  validates :title, presence: true

end
