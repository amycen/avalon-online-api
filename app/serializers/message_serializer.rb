class MessageSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :user_id, :text, :created_at
end
