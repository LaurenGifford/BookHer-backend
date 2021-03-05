class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :city, :budget, :date
  # has_one :casting_director
  has_many :questions
  has_many :models
end
