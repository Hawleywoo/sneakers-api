class UserSneakersController < ApplicationController
    before_action :authenticate

    def create
        @user_sneaker = UserSneaker.create(
            user_id: @user.id,
            sneaker_id: params[:sneaker_id]
        )

        render json: @user_sneaker.errors.full_messages
    end

    def destroy
        UserSneaker.find_by(user_id: @user.id, sneaker_id: params[sneaker_id]).destroy
    end
end
