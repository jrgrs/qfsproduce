class Product < ActiveRecord::Base
	validates :title, :description, :unit, :image_url, presence: true
	validates :price, numericality: {greater_than_or_eaqual_to: 0.01}
	validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|png|jpg)\Z}i,
		message: "Must be a URL for a .gif, .png or .jpg image."
	}
end
