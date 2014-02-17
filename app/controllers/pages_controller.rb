class PagesController < ApplicationController
	include CurrentCart
	skip_before_action :authorize

	before_action :set_cart

	def home

	end

	def coverage

	end

	def about

	end
end
