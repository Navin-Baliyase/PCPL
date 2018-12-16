class Album < ApplicationRecord
	belongs_to :user
	has_many_attached :photos
	validates :name, presence: true
	validates :owner, presence: true
	validate :image_type

	private
	def image_type
		if photos.attached? == false
			errors.add(:photos, "are missing.")
		end
		if photos.records.count > 25
			errors.add(:photos, "limit exceeded.")
			photos.purge_later
		end
		photos.each do |photo|
			if photo && !photo.content_type.in?(%w(image/jpeg image/png))
				errors.add(:photo, 'Must be a png a jpeg file')
					photo.purge_later
				end
			end
		end

	end
