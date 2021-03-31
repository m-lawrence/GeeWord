class UsersController < ApplicationController

    skip_before_action :logged_in?, only: [:new, :create]

    def index
    end 

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params(:username, :password, :location))
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

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.assign_attributes(params[:user])
        @user.save(validate: false)
        redirect_to user_path(@user)
    end

    private

    def user_params(*args)
        params.require(:user).permit(*args)
    end

end
