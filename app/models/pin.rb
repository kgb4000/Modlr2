class Pin < ActiveRecord::Base
	belongs_to :user
	
	validates :name, presence: true
	validates :user_name, presence: true
	validates :age, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :bio, presence: true

	mount_uploader :image, ImageUploader
end
