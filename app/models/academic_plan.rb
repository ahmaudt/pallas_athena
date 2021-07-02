class AcademicPlan < ApplicationRecord
  belongs_to :student
  belongs_to :advisor
  has_many :term_plans
  has_many :courses, through: :term_plans
end
