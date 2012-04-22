# -*- encoding: utf-8 -*-
class OutOrdersController < InheritedResources::Base
	before_filter :authenticate_user!

	def index
		if params[:search]
			@out_orders = OutOrder.where("oid LIKE '%#{params[:search]}%'").page params[:page]
		else
			@out_orders = OutOrder.page params[:page]
		end
	end

	def create
		@out_order = OutOrder.new(params[:out_order])
		@out_order.status = 0
		@out_order.user_id = current_user.id
		if @out_order.save
			@out_order.oid = "OP" + Time.now.to_i.to_s + @out_order.id.to_s
			@out_order.save

			oo = OutOrderItem.new(params[:out_order])
			oo.out_order_id = @out_order.id
			s = Storage.find_by_product_id(oo.product_id)
			number = s.number if s
			if number
				if oo.number < number
					oo.save
					flash[:notice] = '出库申请成功！'
					redirect_to :action => :index
				else
					@out_order.destroy
					flash[:error] = '该商品库存不足！'
					redirect_to :action => :new
				end
			else
				@out_order.destroy
				flash[:error] = '该商品库存不足！'
				redirect_to :action => :new
			end
		else
			redirect_to :action => :new
		end
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

	def show
		@out_order = OutOrder.find(params[:id])
		@user = @out_order.user
		@supplier = @user.supplier || Supplier.new
		@oi = @out_order.out_order_item || OutOrderItem.new
		@product = @oi.product || Product.new

		show!
	end

end