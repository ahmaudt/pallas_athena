class Student < ApplicationRecord
  belongs_to :matriculation_term, :class_name => 'AcademicTerm'
  belongs_to :graduation_term, :class_name => 'AcademicTerm'
  has_many :academic_terms
  belongs_to :major
  belongs_to :advisor
  has_many :academic_plans, dependent: :destroy
end
