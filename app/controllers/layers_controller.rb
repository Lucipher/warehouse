class LayersController < InheritedResources::Base

	def index
		shelf = Shelf.find(params[:shelf_id])
		@layers = shelf.layers
	end

	def create
		layer = Layer.new(params[:layer])
		layer.shelf_id = params[:shelf_id]
		if layer.save
			redirect_to :action => :index
		end
	end
end
