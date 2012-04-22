class ProductsController < InheritedResources::Base
	before_filter :authenticate_user!

	def index
		if params[:search]
			@products = Product.where("id = #{params[:search].to_i} OR name LIKE '%#{params[:search]}%' OR pid LIKE '%#{params[:search]}%'").page params[:page]
		else
			@products = Product.page params[:page]
		end
	end
end
