class SessionsController < ApplicationController

    skip_before_action :logged_in?, only: [:new_login, :login]
    skip_before_action :verify_authenticity_token

    def logout
        session.delete(:user_id)
        redirect_to users_path
    end

    def new_login
    end

    def login
        user = User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:errors] = "Password or username is incorrect"
            redirect_to new_login_path
        end
    end

end