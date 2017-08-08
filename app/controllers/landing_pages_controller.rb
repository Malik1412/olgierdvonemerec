class LandingPagesController < ApplicationController
	def index	
		# if session[:user_id].nil? == false
		# 	redirect_to user_path(id:session[:user_id])
		# end

		@dantes = Image.all
		@dante = Image.new
	end

	def login
		@user = User.find_by(name:params[:name]) 
		if  @user.nil? == true || @user.authenticate(params[:password]) == false
			redirect_to root_path
		else
			session[:user_id] = @user.id
			redirect_to user_path(id: @user.id)
		end
	end

	def logout
		session[:user_id] = nil
		redirect_to root_path
	end
end
