class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :user

  def user
  	if session[:user_id].nil? == false
  	@user = User.find(session[:user_id])
  	end

  	@vergil = Image.new
  end
end
