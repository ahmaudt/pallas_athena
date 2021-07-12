class Course < ApplicationRecord
  belongs_to :course_term, class_name: 'AcademicTerm'
  has_many :course_plans
  has_many :academic_plans, through: :course_plans

  accepts_nested_attributes_for :academic_plans # permits self to accept hash for object/data

  def term_offered
    course = self.course_term
    course.academic_term
  end
end
