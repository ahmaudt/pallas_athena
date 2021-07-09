class Course < ApplicationRecord
  belongs_to :course_term, class_name: 'AcademicTerm'

  def term_offered
    course = self.course_term
    course.academic_term
  end
end
