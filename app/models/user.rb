class User < ApplicationRecord
    has_many :user_sneakers
    has_many :sneakers, through: :user_sneakers
    has_secure_password
end
