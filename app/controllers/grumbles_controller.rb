class GrumblesController < ApplicationController
	respond_to :json
	
	def index
		respond_with Grumble.all
	end

	def show
		respond_with Grumble.find(params[:id])
	end

	def create
		respond_with Grumble.create(as_params(params))
	end

	def update
		respond_with Grumble.update(as_params(params))
	end

	def destroy
		respond_with Grumble.destroy(params[:id])
	end

	private
	def as_params param
		params.require(:grumble).permit(:author, :content, :title, :image, :avatar)
	end
end
