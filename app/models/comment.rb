class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :question
  mount_uploader :image, ImageUploader
  validates :title, presence: true
 
  validates :content, length: {minimum: 2, maximum: 150}
end
