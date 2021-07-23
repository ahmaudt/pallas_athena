class Advisor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :ugamyid, uniqueness: true
  validates :email, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[google_oauth2]
  # has_secure_password

  # belongs_to :college
  has_many :student_rosters
  has_many :students, through: :student_rosters

  # accepts_nested_attributes_for :college

  def email_required?
    false
  end

  def email_changed?
    false
  end

  def self.from_omniauth(auth)
    @advisor = Advisor.find_by(email: auth.info.email)
    if @advisor
      @advisor.provider = auth.provider
      @advisor.uid = auth.uid
      @advisor.save
    else
      @advisor = Advisor.where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
      end
    end
  end

  def college_attributes=(college_hash)
    if college_hash["college_code"].present?
      college_hash.values.each do |college_value|
        college = College.find_or_create_by(college_code: college_value)
        self.college = college
      end
    end
  end
end
