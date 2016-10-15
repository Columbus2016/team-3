class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def after_sign_in_path_for(users)
    edit_user_registration_path
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:lat, :long, :gender, :stage, :status, :cancer_type, :anonymous, :date_of_birth, :name, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:studentid, :password, :remember_me) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit( :lat, :long, :gender, :stage, :status, :cancer_type, :anonymous, :date_of_birth, :name, :email, :password, :password_confirmation, :current_password) }
  end
end
