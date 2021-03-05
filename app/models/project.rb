class Project < ApplicationRecord
  belongs_to :casting_director
  has_many :jobs
  has_many :models, through: :jobs
  has_many :questionnaires
  has_many :questions, through: :questionnaires
end
