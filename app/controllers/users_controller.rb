class UsersController < ApplicationController
    before_action :authenticate, only: [:index]
    # before_action :user_params, only: [:create]

    def index
        render json: @user, except: :password_digest, include: [:sneakers]
    end
    
    def create
        @user = User.create(
            user_params
        )
        
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
