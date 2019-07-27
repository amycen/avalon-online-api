class User < ApplicationRecord
    has_many :game_roles
    has_many :messages
    has_many :games, through: :game_roles
    has_many :roles, through: :game_roles
    
    validates :username, uniqueness: true
    has_secure_password
end
