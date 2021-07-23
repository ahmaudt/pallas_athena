class StudentRoster < ApplicationRecord
  belongs_to :advisor
  belongs_to :student
end
