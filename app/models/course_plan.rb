class CoursePlan < ApplicationRecord
  belongs_to :academic_plan
  belongs_to :course
end
