Tutoring.destroy_all
TutorProfile.destroy_all
User.destroy_all

tutee_1 = User.create!(email: "tutee1@email.com", password: 123456)

puts "Creating tutors..."
TutorProfile.create!(
  user: tutor_1 = User.create!(email: "tutor1@email.com", password: 123456),
  bio: "I love Ruby",
  address: "Campeche 233 - CDMX - Mexico"
)
TutorProfile.create!(
  user: User.create!(email: "tutor2@email.com", password: 123456),
  bio: "I love Java",
  address: "Fernando Montes de Oca 28 - CDMX - Mexico"
)

puts "Tutees book tutors..."
Tutoring.create!(
  tutee: tutee_1,
  tutor_profile: tutor_1.tutor_profile,
  start_at: DateTime.now + 2.days,
  end_at:   DateTime.now + 2.days + 4.hours
)


