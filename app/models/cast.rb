class Cast < ActiveRecord::Base

	belongs_to :user

	validates :name, presence: true
	validates :company, presence: true
	validates :description, presence: true
	validates :dates_locations, presence: true
	validates :compensation, presence: true
	
end
