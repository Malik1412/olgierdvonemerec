class UsersController < ApplicationController
	def create
		User.create(name:params[:name], password:params[:password])
		redirect_to root_path
	end

	def show
		@user = User.find(params[:id])
		@art = Image.where(user_id:params[:id])
	end
end
