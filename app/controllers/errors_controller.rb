class ErrorsController < ApplicationController

	def route_missing
		render json: {error: {message: "Resource is not available", status: 404}}
	end

	

end