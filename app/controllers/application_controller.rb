class ApplicationController < ActionController::Base

    before_action :logged_in?
    skip_before_action :logged_in?, only: [:welcome]

    def logged_in_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def logged_in?
        redirect_to new_login_path unless logged_in_user
    end

    def welcome
        @user = User.new
        render :welcome
    end
end
