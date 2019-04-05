class SessionsController < ApplicationController

    def new
        render :new
    end

    def create
        @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
        if @user
            login_user(@user)
            redirect_to user_url(@user)
        else
            render :new
        end
    end

    def destroy
    end
end
