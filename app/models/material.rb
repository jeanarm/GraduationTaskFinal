class Material < ApplicationRecord
  belongs_to :course
  mount_uploader :content, ContentUploader
  validates :title, presence: true
  validates :content, presence: true
end
