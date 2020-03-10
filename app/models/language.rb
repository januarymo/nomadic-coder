class Language < ApplicationRecord
  has_many :tutor_profiles, through: :tutor_languages
end
