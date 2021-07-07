class AcademicPlan < ApplicationRecord
  belongs_to :student
  has_many :term_plans, dependent: :destroy
  has_many :courses, through: :term_plans

  accepts_nested_attributes_for :courses
  accepts_nested_attributes_for :term_plans
end
