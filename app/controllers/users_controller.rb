class UsersController < ApplicationController

    skip_before_action :logged_in?, only: [:new, :create]

    def index
    end 

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id
        redirect_to user_path(@user)
        else 
            redirect_to new_user_path
        end
    end

    def show
        @user = User.find(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :location)
    end

end
