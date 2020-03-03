class TutorProfile < ApplicationRecord
  belongs_to :user

  has_many :tutorings, dependent: :destroy
end
