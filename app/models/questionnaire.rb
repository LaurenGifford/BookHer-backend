class Questionnaire < ApplicationRecord
  belongs_to :project
  belongs_to :question
end
