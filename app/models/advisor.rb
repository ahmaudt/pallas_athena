class Advisor < ApplicationRecord
  belongs_to :college
  has_many :students
  has_many :academic_plans
end
