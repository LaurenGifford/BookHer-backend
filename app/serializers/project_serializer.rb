class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :city, :budget, :date
  has_one :casting_director
end
