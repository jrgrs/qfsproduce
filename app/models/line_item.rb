class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  belongs_to :order

  def total_price
  	if product.special == true
  		product.sprice * quantity
  	else
  		product.price * quantity
  	end
  end
end
