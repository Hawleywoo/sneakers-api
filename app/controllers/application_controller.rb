class ApplicationController < ActionController::API
    def authenticate
        header = request.headers['Authorization']
        
        if !header
            render json: {message: 'Unathorized'}, status: :forbidden
        else
            token = header.split(' ')[1]
            secret = Rails.application.secrets.secret_key_base
            begin
                payload = JWT.decode(token, secret)[0]
                user_id = payload['user_id']
                @user = User.find(user_id)
            rescue
                render json: {error: 'Must be logged in'}, status: :forbidden 
            end
        end
    end
end
