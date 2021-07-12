class AcademicPlan < ApplicationRecord
  belongs_to :student
  has_many :course_plans, dependent: :destroy
  has_many :courses, through: :course_plans
  belongs_to :advised_term, class_name: 'AcademicTerm'

  accepts_nested_attributes_for :courses
  accepts_nested_attributes_for :advised_term

  def advised_term_attributes=(advised_term_hash)
    advised_term_hash.values.each do |advising_term|
      if advised_term_hash['academic_term_code'].present?
        term = AcademicTerm.find_or_create_by(academic_term_code: advising_term)
          self.advised_term = term
        end
    end
  end

  def courses_attributes=(courses_hash)
    courses_hash.values.each do |course_hash|
      if course_hash['course_code'].present?
        binding.pry
        get_course = course_hash.values_at('course_code')
        advised_course = Course.find_or_create_by(course_code: get_course)
        academic_plan_course = CoursePlan.find_or_create_by(course: advised_course)
        self.courses << advised_course
      end
    end
  end
end
