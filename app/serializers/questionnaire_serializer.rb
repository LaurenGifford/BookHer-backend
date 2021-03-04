class QuestionnaireSerializer < ActiveModel::Serializer
  attributes :id, :text, :pop_up, :model_attr
  has_one :project
end
