class UsersController < ApplicationController
       #loading the signup form
    def new
        @user = User.new
    end 
    
    #signup
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
            render :new
        end
    end
    
    def show
        @user = User.find(params[:id])
    end 

    private 

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end    
end
