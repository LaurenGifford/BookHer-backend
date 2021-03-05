class Model < ApplicationRecord
    has_many :jobs
    has_many :projects, through: :jobs
end
