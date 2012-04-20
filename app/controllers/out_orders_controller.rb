# -*- encoding: utf-8 -*-
class OutOrdersController < InheritedResources::Base
	before_filter :authenticate_user!

	def create
		@out_order = OutOrder.new(params[:out_order])
		@out_order.status = 0
		@out_order.user_id = current_user.id
		create! { out_orders_path }
	end

	def change
		order = OutOrder.find(params[:id])
		status = 0
		case order.status
		when 0       # never begin
			status = 1 # start
		when 1
			status = 2 # finish
		end
		order.status = status
		order.save
		redirect_to out_orders_path
	end

end