class Course < ApplicationRecord
  belongs_to :user
  has_many :marks, dependent: :destroy 
  has_many :materials, dependent: :destroy 
end
