class SessionsController < ApplicationController
    #Login form
    def new
        @user = User.new
        render :login
    end
    
    def create
        #Find our user object
        @user = User.find_by(username: params[:user][:username])

        # want to check that user exists
        #then authenticate their password
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to gardens_path
        else
            redirect_to '/login'

        end
    end
    
    def home   
    end 
    


    def destroy
        session.clear
        redirect_to login_path
        #logging out
    end

end
