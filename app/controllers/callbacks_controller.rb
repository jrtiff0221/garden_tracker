class CallbacksController < Devise::OmniauthCallbacksController
    
    def github
        @user = User.from_omniauth(request.env["omniauth"])
        signin_and_redirect @user
    end
end