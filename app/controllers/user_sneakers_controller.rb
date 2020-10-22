class UserSneakersController < ApplicationController
    before_action :authenticate

    def index
        @user_sneaker = UserSneaker.all
        render json: @user_sneaker
    end

    def create
        @user_sneaker = UserSneaker.create(
            user_id: @user.id,
            sneaker_id: params[:sneaker_id]
        )

        render json: @user_sneaker.errors.full_messages
    end

    def remove
        UserSneaker.find_by(
            user_id: params[:user_id], 
            sneaker_id: params[:sneaker_id]
        ).destroy

        render status: :no_content
    end

end
