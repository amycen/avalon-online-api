class Game < ApplicationRecord
    has_many :game_roles
    has_many :messages
    has_many :users, through: :game_roles
    has_many :roles, through: :game_roles
end
