class TutorLanguage < ApplicationRecord
   acts_as_votable

  belongs_to :tutor_profile
  belongs_to :language
end
