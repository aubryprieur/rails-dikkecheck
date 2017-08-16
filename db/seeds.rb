# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all
Belge.destroy_all
Booking.destroy_all
Review.destroy_all
Category.destroy_all
BelgeCategory.destroy_all


puts 'Creating users...'
users_attributes = [
  {
    first_name:"pierre",
    last_name:"dubois",
    email: "toto@gmail.com",
    password:"azerty",
    password_confirmation:"azerty" ,
    photo: "http://lorempixel.com/400/200/people/1"
  },
  {
    first_name: "Bob",
    last_name: "langlois",
    email: "tata@gmail.com",
    password: "qsdfgh",
    password_confirmation: "qsdfgh",
    photo: "http://lorempixel.com/400/200/people/2"
  },
    {
    first_name: "Valerie",
    last_name: "Dupont",
    email: "valDup@gmail.com",
    password: "wxcvbn",
    password_confirmation: "wxcvbn",
    photo: "http://lorempixel.com/400/200/people/10"
  },

]
User.create!(users_attributes)
puts 'Finished!'

puts 'Creating categories...'
categories_attributes = [
  {
    name: "accent de Namur",
  },

  {
    name: "accent Bruxelles",
  },
  {
    name: "accent de Charleroi",
  },

]
Category.create!(categories_attributes)
puts 'Finished!'

puts 'Creating belges...'
belges_attributes = [
  {
    first_name:"Benoit",
    last_name:"Poolvorde",
    description: "aime fumer, boire, et jouer dans des navets",
    photo_url: 'http://res.cloudinary.com/copas/image/upload/c_crop/v1502817016/bp_ekutnj.jpg',
    price:"20",
    address: "10 boulevard Basly Lens",
    user_id:"1"
  },
  {
    first_name:"roi",
    last_name:"desbelges",
    description: "j'aime le république",
    photo_url: 'http://res.cloudinary.com/copas/image/upload/v1502817049/rdb_do71tk.jpg',
    price:"50",
    address: "10 rue solferino Lille",
    user_id:"2"
  },
  {
    first_name:"frères",
    last_name:"Dardennes",
    description: "notre film préféré: on se calme et on boit frais à St Tropez",
    price:"35",
    photo_url: 'http://res.cloudinary.com/copas/image/upload/v1502817340/dardenne_y1jrju.jpg',
    address: "rue de la ferme Bruxelles",
    user_id:"3"
  },
  {
    first_name:"Jean-claude",
    last_name:"Van Damme",
    description: "Aware",
    price:"35",
    photo_url: 'http://res.cloudinary.com/copas/image/upload/v1502813189/apomm4thzatowgocyx1d.jpg',
    address: "rue des wallons Bruxelles",
    user_id:"3"
  }
]

Belge.create!(belges_attributes)
puts 'Finished!'


puts 'Creating belge category...'
belge_categories_attributes = [
  {
    category_id: "1",
    belge_id: "1",
  },
  {
    category_id: "2",
    belge_id: "2",
  },
  {
    category_id: "3",
    belge_id: "3",
  },

]
BelgeCategory.create!(belge_categories_attributes)
puts 'Finished!'





puts 'Creating reviews...'
reviews_attributes = [
  {
    title: "Bonne soirée",
    description: "Bel accent et bonnes blagues!",
    rating: "4",
    user_id:  "1",
    belge_id: "1"
  },
  {
    title: "ok pas mal",
    description: "trop sérieux, trop de protocole",
    rating: "2",
    user_id:  "2",
    belge_id: "1"
  },
    {
    title: "sympa",
    description: "grace a benoit , j'ai decouvert pleins de nouvelles bières belges!",
    rating: "5",
    user_id:  "2",
    belge_id: "1"
  },

]
Review.create!(reviews_attributes)
puts 'Finished!'



puts 'Creating bookings...'
bookings_attributes = [
  {
    start_date: "2017/04/12",
    end_date: "2017/04/13",
    status: "Demande en cours",
    message:  "dispo pour la journée ?",
    user_id: "3",
    belge_id: "1"
  },
  {
    start_date: "2017/05/10",
    end_date: "2017/05/13",
    status: "Confirmé",
    message:  "dispo pour le week-end pour faire la fête ?",
    user_id: "2",
    belge_id: "2"
  },
  {
    start_date: "2017/08/12",
    end_date: "2017/08/13",
    status: "Annulé",
    message:  "journée plage en belgique",
    user_id: "1",
    belge_id: "3"
  },

]
Booking.create!(bookings_attributes)
puts 'Finished!'





