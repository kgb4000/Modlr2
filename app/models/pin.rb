class Pin < ActiveRecord::Base
	belongs_to :user
	
	validates :name, presence: true
	validates :user_name, presence: true
	validates :age, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :bio, presence: true

	validate :validate_minimum_image_size

	def validate_minimum_image_size
	  image = MiniMagick::Image.open(picture.path)
	  unless image[:width] > 400 && image[:height] > 400
	    errors.add :image, "should be 400x400px minimum!" 
	  end
	end

		mount_uploader :image, ImageUploader
	end
