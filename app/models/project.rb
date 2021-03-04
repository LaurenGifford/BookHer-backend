class Project < ApplicationRecord
  belongs_to :casting_director
  has_many :jobs
  has_one :questionnaire
end
