class AcademicPlan < ApplicationRecord
  belongs_to :student
  has_many :course_plans, dependent: :destroy
  has_many :courses, through: :course_plans
  belongs_to :advised_term, class_name: 'AcademicTerm'

  accepts_nested_attributes_for :courses
  accepts_nested_attributes_for :advised_term

  def advised_term_attributes=(advised_term_hash)
    if advised_term_hash['academic_term_code'].present?
      advised_term_hash.values.each do |advising_term|
        term = AcademicTerm.find_or_create_by(academic_term_code: advising_term)
        self.advised_term = term
      end
    end
  end

  def courses_attributes=(course_hash)
    binding.pry
    if course_hash['course_code'].present?
      course_hash.values.each do |course_code|
        advised_course = course_code.values_at("course_code")
        course = Course.find_or_create_by(course_code: advised_course)
        self.courses << course
      end
    end
  end
end
