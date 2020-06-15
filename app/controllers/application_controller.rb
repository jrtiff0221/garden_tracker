class ApplicationController < ActionController::Base
    helper_method :current_user
    
    def home
        if current_user.present? 
            redirect_to gardens_path
        else
            render :home
        end
    end
    
    private
    
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

end
