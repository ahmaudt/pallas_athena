class Course < ApplicationRecord
  belongs_to :course_term, class_name: 'AcademicTerm'
end
