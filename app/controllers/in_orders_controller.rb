#-*- encoding: utf-8 -*-
class InOrdersController < InheritedResources::Base
	before_filter :authenticate_user!

	def index
		if params[:search]
			@in_orders =InOrder.where("oid LIKE '%#{params[:search]}%'").page params[:page]
		else
			@in_orders = InOrder.page params[:page]
		end
	end

	def create
		@in_order = InOrder.new(params[:in_order])
		@in_order.status = 0
		@in_order.user_id = current_user.id
		if @in_order.save
			@in_order.oid = "IP" + Time.now.to_i.to_s + @in_order.id.to_s
			@in_order.save

			io = InOrderItem.new(params[:in_order])
			io.in_order_id = @in_order.id
			s = Storage.find_by_product_id(io.product_id)
			if s
				s.number = 0 if !s.number
				s.number += io.number				
			else
				s = Storage.new(product_id: params[:in_order][:product_id], number: params[:in_order][:product_id])
			end
			s.save
			io.save
			flash[:notice] = '入库申请成功！'
			redirect_to :action => :index
		else
			flash[:error] = '入库申请发生错误!'
			redirect_to :action => :new
		end
	end

	def show
		@in_order = InOrder.find(params[:id])
		@user = @in_order.user
		@supplier = @user.supplier || Supplier.new
		show!
	end
end
