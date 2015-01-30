class HomeController < ApplicationController
  def index
  end

  def create
  	@user = User.new(first_name: params[:User][:first_name], last_name: params[:User][:last_name], email: params[:User][:email],
  	 password: params[:User][:password], password_confirmation: params[:User][:password_confirmation], user_type_id: params[:User][:user_type_id])
  	@user.save
  
  end
end
