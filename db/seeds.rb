# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
BelgeCategory.destroy_all
Category.destroy_all
Review.destroy_all
Booking.destroy_all
Belge.destroy_all
User.destroy_all


puts 'Creating users...'
user1 = User.create!(
  first_name:"pierre",
  last_name:"dubois",
  email: "toto@gmail.com",
  password:"azerty",
  password_confirmation:"azerty" ,
  photo: "http://lorempixel.com/400/200/people/1"
  )
user2 = User.create!(
  first_name: "Bob",
  last_name: "langlois",
  email: "tata@gmail.com",
  password: "qsdfgh",
  password_confirmation: "qsdfgh",
  photo: "http://lorempixel.com/400/200/people/2"
  )
user3 = User.create!(
  first_name: "Valerie",
  last_name: "Dupont",
  email: "valDup@gmail.com",
  password: "wxcvbn",
  password_confirmation: "wxcvbn",
  photo: "http://lorempixel.com/400/200/people/10"
  )
puts 'Finished!'

puts 'Creating categories...'
category1 = Category.create!(name: "accent de Namur")
category2 = Category.create!(name: "accent Bruxelles")
category3 = Category.create!(name: "accent de Charleroi")
puts 'Finished!'

puts 'Creating belges...'
belge1 = Belge.create!(
  first_name:"Jean-claude",
  last_name:"Van Damme",
  description: "Aware",
  price:"35",
  photo_url: 'http://res.cloudinary.com/copas/image/upload/v1502813189/apomm4thzatowgocyx1d.jpg',
  address: "rue des wallons Bruxelles",
  user: User.all.to_a.sample
  )
belge2 = Belge.create!(
  first_name:"roi",
  last_name:"desbelges",
  description: "j'aime le république",
  photo_url: 'http://res.cloudinary.com/copas/image/upload/v1502817049/rdb_do71tk.jpg',
  price:"50",
  address: "10 rue solferino Lille",
  user: User.all.to_a.sample
  )
belge3 = Belge.create!(
  first_name:"Jean-claude",
  last_name:"Van Damme",
  description: "Aware",
  price:"35",
  photo_url: 'http://res.cloudinary.com/copas/image/upload/v1502813189/apomm4thzatowgocyx1d.jpg',
  address: "rue des wallons Bruxelles",
  user: User.all.to_a.sample
  )
puts 'Finished!'


puts 'Creating belge category...'
BelgeCategory.create!(belge: belge1, category: category1)
BelgeCategory.create!(belge: belge2, category: category2)
BelgeCategory.create!(belge: belge3, category: category3)
puts 'Finished!'


puts 'Creating reviews...'
Review.create!(
  title: "Bonne soirée",
  description: "Bel accent et bonnes blagues!",
  rating: "4",
  belge: belge1,
  user: user1
  )
Review.create!(
  title: "ok pas mal",
  description: "trop sérieux, trop de protocole",
  rating: "2",
  belge: belge2,
  user: user2
  )
Review.create!(
  title: "sympa",
  description: "Effectivement aware!",
  rating: "5",
  belge: belge3,
  user: user3
  )
puts 'Finished!'



puts 'Creating bookings...'
Booking.create!(
  start_date: "2017/04/12",
  end_date: "2017/04/13",
  status: "Demande en cours",
  message:  "dispo pour la journée ?",
  belge: belge1,
  user: user1
  )
Booking.create!(
  start_date: "2017/04/12",
  end_date: "2017/04/13",
  status: "Demande en cours",
  message:  "dispo pour la journée ?",
  belge: belge2,
  user: user2
  )
Booking.create!(
  start_date: "2017/04/12",
  end_date: "2017/04/13",
  status: "Demande en cours",
  message:  "dispo pour la journée ?",
  belge: belge3,
  user: user3
  )
puts 'Finished!'





