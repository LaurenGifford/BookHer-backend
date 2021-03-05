class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :text, :model_attr, :pop_up
end
