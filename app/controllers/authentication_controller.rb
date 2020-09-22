class AuthenticationController < ApplicationController
    def login 
        @user = User.find_by(username: params[:username])

        if !@user
            render json: {message: 'Try again'}, status: :unauthorized
        else
            if !@user.authenticate(params[:password])
                render json: {message: 'Try again pass'}, status: :unauthorized
            else
                payload = {
                    user_id: @user.id, 
                    username: params[:username]
                }
                secret = Rails.application.secrets.secret_key_base

                token = JWT.encode(payload, secret)
                
                render json: {
                    user_id: @user.id,
                    username: @user.username,
                    sneakers: @user.sneakers,
                    token: token }
            end
        end
    end
end
