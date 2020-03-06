class TutorProfile < ApplicationRecord
  belongs_to :user

  has_many :tutorings, dependent: :destroy
  has_many :tutoring_languages
  has_many :languages, through: :tutoring_languages
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
