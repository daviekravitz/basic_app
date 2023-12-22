class UsersController < ApplicationController
	
	skip_before_action :verify_authenticity_token
	
	def create
		@user = User.create(username: params[:username])
		render json: params
	end
end
