class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :num_of_players
  has_many :messages
  has_many :game_roles
end
