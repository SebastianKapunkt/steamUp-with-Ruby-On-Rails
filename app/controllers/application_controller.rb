class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to 'devise/sessions#new'
    end
  end

  protected def configure_permitted_parameters
    added_attrs = [:name, :steam_id, :email,:password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  end
end
