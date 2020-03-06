Tutoring.destroy_all
TutorProfile.destroy_all
User.destroy_all

tutee_1 = User.create!(email: "tutee1@email.com", password: 123456)

puts "Creating tutors..."
TutorProfile.create!(
  user: tutor_1 = User.create!(email: "tutor1@email.com", password: 123456, name: "Andy", picture: "https://images.unsplash.com/photo-1503235930437-8c6293ba41f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60"),
  bio: "My specializations are Ruby, Python, and JS. I'd love to help. Send me a message!",
  address: "Campeche 233 - CDMX - Mexico"
)
TutorProfile.create!(
  user: User.create!(email: "tutor2@email.com", password: 123456, name: "Pedro", picture: "https://images.unsplash.com/photo-1581391528803-54be77ce23e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80"),
  bio: " I am a web developer.
  I learned to program making websites from scratch with HTML, CSS, Javascript, PHP, and MySQL.",
  address: "Fernando Montes de Oca 28 - CDMX - Mexico"
)

TutorProfile.create!(
  user: User.create!(email: "tutor3@email.com", password: 123456, name: "Andrea", picture: "https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=80"),
  bio: "I'm experienced in MindFuck. Hit me up if you need any help with your projects!",
  address: "333 Benbow dr. East Bend, NC"
)


TutorProfile.create!(
  user: User.create!(email: "tutor4@email.com", password: 123456, name: "Trisha", picture: "https://images.unsplash.com/photo-1581992652564-44c42f5ad3ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80"),
  bio: "I am an experienced Software Engineer with around 10 years of real experience in the field.
  Skilled in C/C++, Java, JavaScript",
  address: "Champ de Mars, 75007 Paris, France"
)

TutorProfile.create!(
  user: User.create!(email: "tutor5@email.com", password: 123456, name: "Artem", picture: "https://images.unsplash.com/photo-1525496649711-a6c069fc6a1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"),
  bio: "I am an experienced Java Engineer and I live on the island of Java",
  address: "Jakarta, Indonesia"
)

TutorProfile.create!(
  user: User.create!(email: "tutor6@email.com", password: 123456, name: "Kim Jong Un", picture: "https://media.voltron.voanews.com/Drupal/01live-166/styles/sourced/s3/reuters-pictures/2020/01/RTS2WX67.jpg?itok=uFwoOi2a"),
  bio: "I believe in the power of Juche and I fight for a United Korea... and I am good at Python",
  address: "Pyongyang, North Korea"
)


puts "Tutees book tutors..."
Tutoring.create!(
  tutee: tutee_1,
  tutor_profile: tutor_1.tutor_profile,
  start_at: DateTime.now + 2.days,
  end_at:   DateTime.now + 2.days + 4.hours
)


