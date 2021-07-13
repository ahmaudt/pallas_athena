class CoursePlan < ApplicationRecord
  belongs_to :academic_plan
  belongs_to :course

  validates_uniqueness_of :course_id, scope: :academic_plan # ensures no duplicate records are created
end
