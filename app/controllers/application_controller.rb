class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def after_sign_in_path_for(resource)

  	if resource.seller?
      sellers_index_path
    else
      buyers_index_path
    end
  end

before_action :configure_permitted_parameters, if: :devise_controller?

def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :user_id, :email, :password) }
end
end
