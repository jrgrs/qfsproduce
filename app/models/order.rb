class Order < ActiveRecord::Base
	
	has_many :line_items, dependent: :destroy
	
	validates :name, :address, :email, presence: true
	
	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item
		end
	end

	def scheduled_date_is_date
		errors.add(:scheduled_date, "is invalid") unless Chronic.parse(scheduled_date)
	end

	def order_must_be_in_future
		if scheduled_date < Date.today
			errors.add(:scheduled_date, "must be a future date")

		end
	end

end
