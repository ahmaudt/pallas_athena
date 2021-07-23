# frozen_string_literal: true

class Student < ApplicationRecord
  belongs_to :matriculation_term, class_name: 'AcademicTerm'
  belongs_to :graduation_term, class_name: 'AcademicTerm'
  belongs_to :advisor
  belongs_to :major
  has_many :academic_plans, dependent: :destroy
  has_many :courses, through: :academic_plans
  has_many :student_rosters
  has_many :advisors, through: :student_rosters

  accepts_nested_attributes_for :matriculation_term
  accepts_nested_attributes_for :graduation_term

  def graduation_term_attributes=(grad_hash)
    if grad_hash['academic_term_code'].present?
      grad_hash.values.each do |grad|
        grad_term = AcademicTerm.find_or_create_by(academic_term_code: grad)
        self.graduation_term = grad_term
      end
    end
  end

  def matriculation_term_attributes=(grad_hash)
    if grad_hash['academic_term_code'].present?
      grad_hash.values.each do |grad|
        matric_term = AcademicTerm.find_or_create_by(academic_term_code: grad)
        self.matriculation_term = matric_term
      end
    end
  end

  def major_in
    student_major = self.major
    student_major.major_title
  end

  def start_term
    term_start = self.matriculation_term
    term_start.academic_term
  end

  def grad_term
    term_grad = self.graduation_term
    term_grad.academic_term
  end
end
