class AcademicTerm < ApplicationRecord
  belongs_to :student
  has_many :courses
end
