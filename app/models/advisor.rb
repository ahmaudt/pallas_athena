class Advisor < ApplicationRecord
  belongs_to :college
  has_many :students, dependent: :destroy # if advisor deleted, it no longer has student, so student deleted
  has_many :academic_plans, dependent: :destroy
end
