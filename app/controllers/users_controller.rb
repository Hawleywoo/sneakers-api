class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        
        render json: @user, include: [:sneakers]
    end

    def create
        @user = User.create(
            username: params[:username],
            password: params[:password]
        )

        render json: @user
    end
end
