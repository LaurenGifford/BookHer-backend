class CastingDirectorSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :projects
end
