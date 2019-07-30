class MessageSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :user_id, :text, :created_at, :username
  belongs_to :user

  def username
    object.user.username
  end
end
