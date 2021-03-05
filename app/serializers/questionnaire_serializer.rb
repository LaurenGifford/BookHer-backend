class QuestionnaireSerializer < ActiveModel::Serializer
  attributes :id, :text, :pop_up, :model_attr, :project
  has_one :project
end
