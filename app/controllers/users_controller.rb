class UsersController < ApplicationController
    before_action :authenticate, only: [:index]

    def index
        render json: @user, except: :password_digest, include: [:sneakers]
    end
    
    def create
        @new_user = User.new(user_params)
        
        if @new_user.save
            render json: @new_user
        else
            render json: @new_user.errors.messages
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
