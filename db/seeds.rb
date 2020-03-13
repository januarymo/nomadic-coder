require "open-uri"

TutorLanguage.destroy_all
Language.destroy_all
Tutoring.destroy_all
TutorProfile.destroy_all
#destroy messages
#destroy conversations
User.destroy_all

python = Language.create!(name: "Python")
cplusplus = Language.create!(name: "C++")
ruby = Language.create!(name: "Ruby")
javascript = Language.create!(name: "JavaScript")
java = Language.create!(name: "Java")
c = Language.create!(name: "C")
css = Language.create!(name: "CSS")
php = Language.create!(name: "PHP")
mysql = Language.create!(name: "MySQL")


tutee_1 = User.create!(email: "tutee1@email.com", password: 123456, name: "Brandon", picture: "https://res.cloudinary.com/dg1vldahp/image/upload/v1582828167/m27aQeefTDfF2oztnVWSSEMa.jpg")

puts "Creating tutors..."
tp_1 = TutorProfile.create!(
  languages: [cplusplus],
  user: User.create!(email: "therussian@email.com", password: 123456, name: "Ivan Smirnov", picture: "https://i.imgur.com/PE2jmWu.jpg"),
  bio: "I accidentally entered North Korea when driving from Vladivostok, so now they force me to teach C++",
  full_bio: "I started teaching myself programming in 2008 at the age of 13, starting with Lua, but have since learnt and worked with C, C#, Java and Python. I primarily make my projects in C# and have participated in 3 Game Jams using XNA. I love creating things especially from scratch which is probably why I love coding, (it is perhaps my biggest hobby) but I also really enjoy helping and teaching people. I've been helping people learn programming whilst at Sixth Form and University and I'd like to think I've gotten pretty good at it, so I look forward to hopefully helping more people in the future.",
  address: "Korean Art Gallery, Pyongyang, North Korea"
)
file = URI.open('https://res.cloudinary.com/do7gz03iy/image/upload/v1584106372/experience3_gnexd1.png')
tp_1.user.experience.attach(io: file, filename: 'cv3.jpg')

tp_2 = TutorProfile.create!(
  languages: [python, javascript],
  user: tutor_1 = User.create!(email: "andy@email.com", password: 123456, name: "Andy", picture: "https://images.unsplash.com/photo-1503235930437-8c6293ba41f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60"),
  bio: "My specializations are Ruby, Python, and JS. I'd love to help. Send me a message!",
  address: "Campeche 233 - CDMX - Mexico"
)
file = URI.open('https://res.cloudinary.com/do7gz03iy/image/upload/v1584106372/experience2_bi4eus.png')
tp_2.user.experience.attach(io: file, filename: 'cv2.jpg')

tp_3 = TutorProfile.create!(
  languages: [css, javascript],
  user: User.create!(email: "pedro@email.com", password: 123456, name: "Pedro", picture: "https://images.unsplash.com/photo-1581391528803-54be77ce23e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80"),
  bio: " I am a web developer.
  I learned to program making websites from scratch with HTML, CSS, Javascript, PHP, and MySQL.",
  address: "Fernando Montes de Oca 28 - CDMX - Mexico"
)
file = URI.open('https://res.cloudinary.com/do7gz03iy/image/upload/v1584036879/sample-experience_fo6o4b.png')
tp_3.user.experience.attach(io: file, filename: 'cv.jpg')

tp_4 = TutorProfile.create!(
  languages: [ruby, mysql],
  user: User.create!(email: "andrea@email.com", password: 123456, name: "Andrea", picture: "https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=80"),
  bio: "I'm experienced in MindFuck. Hit me up if you need any help with your projects!",
  address: "333 Benbow dr. East Bend, NC"
)
file = URI.open('https://res.cloudinary.com/do7gz03iy/image/upload/v1584036879/sample-experience_fo6o4b.png')
tp_4.user.experience.attach(io: file, filename: 'cv.jpg')

tp_5 = TutorProfile.create!(
  languages: [cplusplus, java, javascript],
  user: User.create!(email: "trisha@email.com", password: 123456, name: "Trisha", picture: "https://images.unsplash.com/photo-1581992652564-44c42f5ad3ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80"),
  bio: "I am an experienced Software Engineer with around 10 years of real experience in the field.
  Skilled in C/C++, Java, JavaScript",
  address: "Champ de Mars, 75007 Paris, France"
)
file = URI.open('https://res.cloudinary.com/do7gz03iy/image/upload/v1584106372/experience2_bi4eus.png')
tp_5.user.experience.attach(io: file, filename: 'cv2.jpg')

tp_6 = TutorProfile.create!(
  languages: [java],
  user: User.create!(email: "artem@email.com", password: 123456, name: "Artem", picture: "https://images.unsplash.com/photo-1525496649711-a6c069fc6a1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"),
  bio: "I am an experienced Java Engineer and I live on the island of Java",
  full_bio: "I started teaching myself programming in 2008 at the age of 13, starting with Lua, but have since learnt and worked with C, C#, Java and Python. I primarily make my projects in C# and have participated in 3 Game Jams using XNA. I love creating things especially from scratch which is probably why I love coding, (it is perhaps my biggest hobby) but I also really enjoy helping and teaching people. I've been helping people learn programming whilst at Sixth Form and University and I'd like to think I've gotten pretty good at it, so I look forward to hopefully helping more people in the future.",
  address: "Jakarta, Indonesia"
)
file = URI.open('https://res.cloudinary.com/do7gz03iy/image/upload/v1584106372/experience3_gnexd1.png')
tp_6.user.experience.attach(io: file, filename: 'cv3.jpg')

tp_7 = TutorProfile.create!(
  languages: [python, ruby],
  user: User.create!(email: "kimchi@email.com", password: 123456, name: "Kim Jong Un", picture: "https://media.voltron.voanews.com/Drupal/01live-166/styles/sourced/s3/reuters-pictures/2020/01/RTS2WX67.jpg?itok=uFwoOi2a"),
  bio: "I believe in the power of Juche and I fight for a United Korea... and I am good at Python and Ruby!",
  full_bio: "• Expert full-stack Python & JavaScript developer
  • Full DevOps: project architecture to production deployment at scale (whether VMs, Docker containers, cloud services, or on-prem)
  • Outstanding trouble-shooter and first responder
  • Strong web app, data structures, data science, and visualization skills
  • Enjoy complex integration and automation challenges
  • Love mentoring.",
  address: "Pyongyang, North Korea"
)
file = URI.open('https://res.cloudinary.com/do7gz03iy/image/upload/v1584106372/experience3_gnexd1.png')
tp_7.user.experience.attach(io: file, filename: 'cv3.jpg')

tp_8 = TutorProfile.create!(
  languages: [cplusplus],
  user: User.create!(email: "kimsangmin@email.com", password: 123456, name: "Kim Sangmin", picture: "https://res.cloudinary.com/dg1vldahp/image/upload/v1583523555/kim_tsel9f.jpg"),
  bio: "I really like C++ and hope to move back to Busan, South Korea very very soon",
  full_bio: " I've been programming ever since I was a kid, and I love sharing my knowledge with other people. I especially like giving my mentees the full picture of how things work. If you want to know not just WHAT to do, but also how it works, and why it works that way, we'll be a great match.",
  address: "Mansudae Fountain Park, Pyongyang, North Korea"
)
file = URI.open('https://res.cloudinary.com/do7gz03iy/image/upload/v1584106372/experience2_bi4eus.png')
tp_8.user.experience.attach(io: file, filename: 'cv2.jpg')

tp_9 = TutorProfile.create!(
  languages: [javascript, mysql],
  user: User.create!(email: "jimmy@email.com", password: 123456, name: "Jimmy Park", picture: "https://pm1.narvii.com/5901/8ae14e3f33a01986b20dfce83e46240252034569_hq.jpg"),
  bio: "I will help you with JavaScript if you help me with getting the fuck out of here",
  full_bio: "Web development is my life, since 2002. For over decade I'm excited to work on the full stack of web sites and applications. With more focus on Front-end and Javascript full stack in recent years.
  My focus: ● HTML, CSS ● Javascript, ES6 ● ⚛ React, JSX, React-Router, Redux, Material-UI ● Firebase for Web: Database, Auth, Storage, Hosting, Functions ● jQuery, Backbone, Marionette ● AJAX, Axios, fetch ● async ● Git, Github ● npm, yarn ● Chrome DevTools ● CSS Frameworks, Bootstrap, Bulma, Foundation, Semantic-UI, SASS ● Handlebars ● NodeJS, ExpressJS, MongoDB ● Webpack, Browserify, Gulp, Bower, Require.js ● Jekyll ●",
  address: "Grand People's Study House, Pyongyang, North Korea"
)
file = URI.open('https://res.cloudinary.com/do7gz03iy/image/upload/v1584036879/sample-experience_fo6o4b.png')
tp_9.user.experience.attach(io: file, filename: 'cv.jpg')

tp_10 = TutorProfile.create!(
  languages: [ruby],
  user: User.create!(email: "revolutionary6@email.com", password: 123456, name: "Jeong Jeong", picture: "https://upload.wikimedia.org/wikipedia/commons/3/38/North_Korean_Soldier.jpg"),
  bio: "I'm a Ruby wiz- I will make sure you do your work. Ruby is a really cool language.",
  full_bio: "I am a Software Developer with experience in solving problems and developing products for use cases related to data. I have been coding since my high school which has been more than 12 years now. I possess in depth knowledge of programming in Ruby, Scala, Python, SQL and scripting with Bash. From a technical standpoint I have worked with databases and datawarehouses (nearly all popular ones for some use case or the other), the complete Hadoop Stack along with Apache Spark on public and private cloud. I have created data driven products and platforms, integrating various data sources, managing the data in a secure way and using them to build and run Machine Learning models. I have also worked in advanced software development requiring use of specilized alogorithms, advanced optimizations for data processing needs in SQL, Spark and scaling APIs.",
  address: "Taedongmun Park, Pyongyang, North Korea"
)
file = URI.open('https://res.cloudinary.com/do7gz03iy/image/upload/v1584036879/sample-experience_fo6o4b.png')
tp_10.user.experience.attach(io: file, filename: 'cv.jpg')

tp_11 = TutorProfile.create!(
  languages: [python, ruby],
  user: User.create!(email: "coco@email.com", password: 123456, name: "Coco Hwang", picture: "https://static.boredpanda.com/blog/wp-content/uploads/2015/10/125__880.jpg"),
  bio: "I can teach you anything you'd like about Python and Ruby, but only if you don't tell Kim Jong Un",
  full_bio: "I've been coding since age of 15, starting with perl, moving to php, and finally to python. I've been a freelancer working in the US, New Zealand, Vietnam, and now working in North Korea.
  I'm interested in helping people solve their website problems quickly and efficiently. At the moment I focus mostly on python/django, javascript, and to a lesser extend php or wordpress problem. I can also help out with linux system admin questions, more specifically with ubuntu/debian based problems.",
  address: "Mansudae Peoples Theatre, Pyongyang, North Korea"
)
file = URI.open('https://res.cloudinary.com/do7gz03iy/image/upload/v1584036879/sample-experience_fo6o4b.png')
tp_11.user.experience.attach(io: file, filename: 'cv.jpg')

tp_12 = TutorProfile.create!(
  languages: [ruby],
  user: User.create!(email: "chef@email.com", password: 123456, name: "Chef Lee", picture: "https://res.cloudinary.com/dg1vldahp/image/upload/v1583528272/chef_lee_oeoyg1.jpg"),
  bio: "I think I am on the wrong app, I teach baking and home economics",
  full_bio: "I am an experienced full-stack software developer with over a decade in the field, primarily in back-end development for web applications. My specialties are debugging, software design, refactoring legacy code, adding automated tests, and automating builds and deployments. I am a licensed Professional Engineer with a degree in Computer Engineering.
  I am passionate about access to technology for all people, and I delight in improving that access through mentoring. While in Canada, I was a frequent mentor and occasional instructor at Ladies Learning Code. In 2015-2016 I was interim CTO at a diversity recruiting platform called Ziversity.",
  address: "Okryu Restaurant, Pyongyang, North Korea"
)
file = URI.open('https://res.cloudinary.com/do7gz03iy/image/upload/v1584036879/sample-experience_fo6o4b.png')
tp_12.user.experience.attach(io: file, filename: 'cv.jpg')


puts "Tutees book tutors..."
Tutoring.create!(
  tutee: tutee_1,
  tutor_profile: tutor_1.tutor_profile,
  start_at: DateTime.now + 2.days,
  end_at:   DateTime.now + 2.days + 4.hours
)


