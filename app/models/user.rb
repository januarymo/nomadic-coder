class User < ApplicationRecord

  acts_as_voter

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :tutor_profile, dependent: :destroy # has_many but with uniqueness validation

  has_many :tutee_tutorings, foreign_key: :tutee_id, class_name: "Tutoring", dependent: :destroy
  has_many :tutor_tutorings, through: :tutor_profile, source: :tutorings

  scope :tutor, -> { joins(:tutor_profile) }
  # scope :tutee, -> { left_joins(:tutor_profile).where(tutor_profiles: { user_id: nil }) }
  # Same as above:
  # def self.tutee
  #   left_joins(:tutor_profile).where(tutor_profiles: { user_id: nil })
  # end
  # scope :tutee, -> { left_joins(:tutor_profile).where("tutor_profiles.user_id IS NULL") }

  def tutor?
    tutor_profile.present?
  end
end
