class GameRoleSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :user_id, :role_id, :result, :username
  belongs_to :user

  def username
    object.user.username
  end

end
