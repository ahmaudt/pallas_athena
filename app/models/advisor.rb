class Advisor < ApplicationRecord
  belongs_to :college
  has_many :students, dependent: :destroy # if advisor deleted, it no longer has student, so student deleted
  has_many :academic_plans, dependent: :destroy

  accepts_nested_attributes_for :college

  def college_attributes=(college_hash)
    if college_hash["college_code"].present?
      college_hash.values.each do |college_value|
        college = College.find_or_create_by(college_code: college_value)
        self.college = college
      end
    end
  end
end
