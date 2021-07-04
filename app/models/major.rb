class Major < ApplicationRecord
  belongs_to :college
  has_many :students
end
