Tutoring.destroy_all
TutorProfile.destroy_all
User.destroy_all

tutee_1 = User.create!(email: "tutee1@email.com", password: 123456)

puts "Creating tutors..."
TutorProfile.create!(
  user: tutor_1 = User.create!(email: "andy@email.com", password: 123456, name: "Andy", picture: "https://images.unsplash.com/photo-1503235930437-8c6293ba41f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60"),
  bio: "My specializations are Ruby, Python, and JS. I'd love to help. Send me a message!",
  address: "Campeche 233 - CDMX - Mexico"
)
TutorProfile.create!(
  user: User.create!(email: "pedro@email.com", password: 123456, name: "Pedro", picture: "https://images.unsplash.com/photo-1581391528803-54be77ce23e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80"),
  bio: " I am a web developer.
  I learned to program making websites from scratch with HTML, CSS, Javascript, PHP, and MySQL.",
  address: "Fernando Montes de Oca 28 - CDMX - Mexico"
)

TutorProfile.create!(
  user: User.create!(email: "andrea@email.com", password: 123456, name: "Andrea", picture: "https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=80"),
  bio: "I'm experienced in MindFuck. Hit me up if you need any help with your projects!",
  address: "333 Benbow dr. East Bend, NC"
)


TutorProfile.create!(
  user: User.create!(email: "trisha@email.com", password: 123456, name: "Trisha", picture: "https://images.unsplash.com/photo-1581992652564-44c42f5ad3ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80"),
  bio: "I am an experienced Software Engineer with around 10 years of real experience in the field.
  Skilled in C/C++, Java, JavaScript",
  address: "Champ de Mars, 75007 Paris, France"
)

TutorProfile.create!(
  user: User.create!(email: "artem@email.com", password: 123456, name: "Artem", picture: "https://images.unsplash.com/photo-1525496649711-a6c069fc6a1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"),
  bio: "I am an experienced Java Engineer and I live on the island of Java",
  address: "Jakarta, Indonesia"
)

TutorProfile.create!(
  user: User.create!(email: "kimchi@email.com", password: 123456, name: "Kim Jong Un", picture: "https://media.voltron.voanews.com/Drupal/01live-166/styles/sourced/s3/reuters-pictures/2020/01/RTS2WX67.jpg?itok=uFwoOi2a"),
  bio: "I believe in the power of Juche and I fight for a United Korea... and I am good at Python",
  address: "Pyongyang, North Korea"
)

TutorProfile.create!(
  user: User.create!(email: "kimsangmin@email.com", password: 123456, name: "Kim Sangmin", picture: "https://pbs.twimg.com/profile_images/1133434395837132800/62Rn-6lA_400x400.jpg"),
  bio: "I really like C++ and hope to move back to Busan, South Korea very very soon",
  address: "Mansudae Fountain Park, Pyongyang, North Korea"
)

TutorProfile.create!(
  user: User.create!(email: "jimmy@email.com", password: 123456, name: "Jimmy Park", picture: "https://pm1.narvii.com/5901/8ae14e3f33a01986b20dfce83e46240252034569_hq.jpg"),
  bio: "I will help you with JavaScript if you help me with getting the fuck out of here",
  address: "Grand People's Study House, Pyongyang, North Korea"
)

TutorProfile.create!(
  user: User.create!(email: "revolutionary6@email.com", password: 123456, name: "Jeong Jeong", picture: "https://upload.wikimedia.org/wikipedia/commons/3/38/North_Korean_Soldier.jpg"),
  bio: "I'm a Ruby wiz- Americans need not apply",
  address: "Taedongmun Park, Pyongyang, North Korea"
)

TutorProfile.create!(
  user: User.create!(email: "coco@email.com", password: 123456, name: "Coco Hwang", picture: "https://static.boredpanda.com/blog/wp-content/uploads/2015/10/125__880.jpg"),
  bio: "I can teach you anything you'd like about Python, but only if you don't tell Kim Jong Un",
  address: "Mansudae Peoples Theatre, Pyongyang, North Korea"
)

TutorProfile.create!(
  user: User.create!(email: "therussian@email.com", password: 123456, name: "Ivan Smirnov", picture: "https://i.imgur.com/PE2jmWu.jpg"),
  bio: "I accidentally entered North Korea when driving from Vladivostok, so now they force me to teach C++",
  address: "Korean Art Gallery, Pyongyang, North Korea"
)

TutorProfile.create!(
  user: User.create!(email: "chef@email.com", password: 123456, name: "Chef Lee", picture: "https://lh5.googleusercontent.com/hnIqWkBFJbDZN_ZUQ-aXj29Dd6DuCcSfn013StDZH89uGuIr-nA4hnDhDm4BeNxH2gs26Zgn6f5lvVpB6yi7dp4nE3us6ZBvq1Zx_7SOKk04WXYVA34YfEURFJi1OoGx2nLbNd8j"),
  bio: "I think I am on the wrong app, I teach baking and home economics",
  address: "Okryu Restaurant, Pyongyang, North Korea"
)



puts "Tutees book tutors..."
Tutoring.create!(
  tutee: tutee_1,
  tutor_profile: tutor_1.tutor_profile,
  start_at: DateTime.now + 2.days,
  end_at:   DateTime.now + 2.days + 4.hours
)


