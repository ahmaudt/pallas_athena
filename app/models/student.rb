class Student < ApplicationRecord
  belongs_to :major
  belongs_to :advisor
end
