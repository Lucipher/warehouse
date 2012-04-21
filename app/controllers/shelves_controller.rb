class ShelvesController < InheritedResources::Base

	def index
		area = Area.find(params[:area_id])
		@shelves = area.shelves
	end

	def create
		shelf = Shelf.new(params[:shelf])
		shelf.area_id = params[:area_id]
		if shelf.save
			redirect_to :action => :index
		end
	end
end
