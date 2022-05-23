class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :configure_permitted_parameters, if: :devise_controller?
  

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name,:age,:username,:email,:password] )
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name,:age,:username, :email, :password, :password_confirmation] )
  end
end