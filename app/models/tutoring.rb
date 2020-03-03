class Tutoring < ApplicationRecord
  belongs_to :tutee, class_name: "User"
  belongs_to :tutor_profile
end
