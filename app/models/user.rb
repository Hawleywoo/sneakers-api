class User < ApplicationRecord
    has_many :user_sneakers
    has_many :sneakers, through: :user_sneakers
    has_secure_password
    validates :username, uniqueness: true, presence: true
    validates :password, presence: true, length: { in: 6..20 }
end
