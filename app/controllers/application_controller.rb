class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end
    
    
    def home
        if current_user.present? 
            redirect_to gardens_path
        else
            render :home
        end
    end
end
