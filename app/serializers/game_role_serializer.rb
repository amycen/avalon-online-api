class GameRoleSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :user_id, :role_id, :result
end
