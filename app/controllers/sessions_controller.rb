class SessionsController < ApplicationController
    #Login form
    def login
        @user = User.new
    end
    
    def create
        #Find our user object
        @user = User.find_by(username: params[:username])

        # want to check that user exists
        #then authenticate their password
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :login
        end
    end

    def destroy
        session.clear
        redirect_to login_path
        #logging out
    end

end
