class SuppliersController < InheritedResources::Base
	before_filter :authenticate_user!

	def index
		if params[:search]
			@suppliers = Supplier.where("id = #{params[:search].to_i} OR name LIKE '%#{params[:search]}%' OR address LIKE '%#{params[:search]}%' OR interface LIKE '%#{params[:search]}%' OR mobile LIKE '%#{params[:search]}%'").page params[:page]
		else
			@suppliers = Supplier.page params[:page]
		end
	end
end
