class College < ApplicationRecord
  has_many :advisors
  has_many :majors
end
