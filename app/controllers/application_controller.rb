class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    # adding name to teacher strong params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) 
  end

  def is_logged_in?
    !session[:user_id].nil?
  end
end