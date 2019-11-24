class Mark < ApplicationRecord
  belongs_to :course
  mount_uploader :content, ContentUploader
end
