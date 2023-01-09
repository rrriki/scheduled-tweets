class RegistrationController < ApplicationController

    def register
        @user = User.new 
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "successfully created account"
        else            
            render :register 
        end
    end

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end

end