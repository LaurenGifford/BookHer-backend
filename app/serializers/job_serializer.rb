class JobSerializer < ActiveModel::Serializer
  attributes :id
  # has_one :model
  has_one :project
end
