class Album < ApplicationRecord
  has_many_attached :photos
  validates :name, presence: true
  validates :owner, presence: true
end
