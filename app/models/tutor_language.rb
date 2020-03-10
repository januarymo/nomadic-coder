class TutorLanguage < ApplicationRecord
  belongs_to :tutor_profile
  belongs_to :language
end
