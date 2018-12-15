class Album < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :name, presence: true
  validates :owner, presence: true
  
end
