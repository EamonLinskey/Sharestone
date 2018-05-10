class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :Hearthpwn_Name, :Blizzard_ID) }
            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :current_password, :password_confirmation, :password, :hpwn, :bliz) }
        end
end