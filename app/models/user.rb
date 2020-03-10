class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :tutor_profile, dependent: :destroy # has_many but with uniqueness validation

  has_many :tutee_tutorings, foreign_key: :tutee_id, class_name: "Tutoring", dependent: :destroy
  has_many :tutor_tutorings, through: :tutor_profile, source: :tutorings

  has_many :sent_messages, class_name: "Message", foreign_key: :sender_id, dependent: :destroy
  has_many :received_messages, class_name: "Message", foreign_key: :receiver_id, dependent: :destroy

  scope :tutor, -> { joins(:tutor_profile) }

  # scope :tutee, -> { left_joins(:tutor_profile).where(tutor_profiles: { user_id: nil }) }
  # Same as above:
  # def self.tutee
  #   left_joins(:tutor_profile).where(tutor_profiles: { user_id: nil })
  # end
  # scope :tutee, -> { left_joins(:tutor_profile).where("tutor_profiles.user_id IS NULL") }

  def active_chat_users
    self.class.joins("JOIN messages ON messages.sender_id = users.id OR messages.receiver_id = users.id").distinct.reject { |user| user == self }
  end

  def messages_with(user)
    messages.where("sender_id = #{user.id} OR receiver_id = #{user.id}")
  end

  # TODO: Change to an AR relation
  def messages
    sent_messages.or(received_messages)
  end

  def tutor?
    tutor_profile.present?
  end
end
