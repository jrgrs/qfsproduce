class StoreController < ApplicationController
	skip_before_action :authorize
	include CurrentCart

	before_action :set_cart

  def index
  	@products = Product.order(:title).paginate(:per_page => 9, :page => params[:page])
  end
end
