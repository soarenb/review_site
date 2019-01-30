class ApplicationController < ActionController::Base
  protect_from_forgery unless: -> { request.format.json? }

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters #this is where you pass in variables from the user class to devise
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation)}
  end
end