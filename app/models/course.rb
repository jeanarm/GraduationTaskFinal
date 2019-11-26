class Course < ApplicationRecord
  belongs_to :user
  has_many :marks, dependent: :destroy 
  has_many :materials, dependent: :destroy 
  validates :name, presence: true
  validates :credit, presence: true
  validates :code, presence: true
end
