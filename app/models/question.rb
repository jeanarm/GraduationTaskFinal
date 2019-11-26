class Question < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy 
  mount_uploader :image, ImageUploader
  validates :title, presence: true
  validates :content, presence: true
  validates :content, length: {minimum: 2, maximum: 150}
end
