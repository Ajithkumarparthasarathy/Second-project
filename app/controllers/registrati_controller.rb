class RegistratiController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "successful"
        else
            flash[:alert] = "Invalid email or password"
            redirect_to sign_up_path
        end
    end


    private
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end