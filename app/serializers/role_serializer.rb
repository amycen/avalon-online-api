class RoleSerializer < ActiveModel::Serializer
  attributes :id, :name, :abbreviation, :faction, :img_url
end
