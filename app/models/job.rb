class Job < ApplicationRecord
  belongs_to :model
  belongs_to :project
end
