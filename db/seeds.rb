# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
Booking.destroy_all
Activity.destroy_all
Category.destroy_all
User.destroy_all

user1 = User.new(email: 'test@gmail.com', password: '123456', password_confirmation: '123456', first_name: 'tom', last_name: 'lol', address: '3 rue fortia, Marseille', phone:'0000000001', birth_date:  DateTime.new(1979, 7, 21))
user2 = User.new(email: 'azerty@gmail.com', password: '123456', password_confirmation: '123456', first_name: 'rachid', last_name: 'lol', address: '3 rue fortia, Marseille', phone:'0000000001', birth_date: DateTime.new(1982, 7, 21))
user1.save
user2.save
img1 = URI.open('https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?size=626&ext=jpg')
user1.photo.attach(io: img1, filename: "1.jpeg", content_type: 'image/jpeg')
img2 = URI.open('https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg')
user2.photo.attach(io: img2, filename: "1.jpeg", content_type: 'image/jpeg')

randonnee = Category.new(name: "Randonnée", photo_path: 'rando.jpg')
randonnee.save
yoga = Category.new(name: "Yoga", photo_path: 'yoga.jpg')
yoga.save
tennis = Category.new(name: "Tennis", photo_path: 'tennis.jpg')
tennis.save
escalade = Category.new(name: "Escalade", photo_path: 'escalade.jpg')
escalade.save
rafting = Category.new(name: "Rafting", photo_path: 'rafting.jpg')
rafting.save
vtt = Category.new(name: "VTT", photo_path: 'vtt.jpg')
vtt.save


rando = Activity.new(
  title: "Randonnée Calanques Sormiou",
  description: "La description est ici en attendant",
  meeting_point: "20 rue haxo, Marseille",
  start_date: DateTime.new(2022, 7, 21, 10, 30),
  difficulty: 6,
  max_of_participant: 2,
  category_id: randonnee.id,
  user_id: user1.id
)
rando.save!

rando2 = Activity.new(
  title: "Randonnée Calanques Sugiton",
  description: "La description est ici en attendant",
  meeting_point: "20 rue haxo, Marseille",
  start_date: DateTime.new(2022, 7, 21, 11, 30),
  difficulty: 3,
  max_of_participant: 2,
  category_id: randonnee.id,
  user_id: user2.id
)
rando2.save!

rando3 = Activity.new(
  title: "Randonnée Calanques Morgiou",
  description: "La description est ici en attendant",
  meeting_point: "20 rue haxo, Marseille",
  start_date: DateTime.new(2022, 7, 21, 8, 30),
  difficulty: 3,
  max_of_participant: 2,
  category_id: randonnee.id,
  user_id: user2.id
)
rando3.save!
rando3 = Activity.new(
  title: "Randonnée Calanques Morgiou",
  description: "La description est ici en attendant",
  meeting_point: "20 rue haxo, Marseille",
  start_date: DateTime.new(2022, 7, 21, 8, 30),
  difficulty: 3,
  max_of_participant: 2,
  category_id: randonnee.id,
  user_id: user2.id
)
rando3.save!
rando3 = Activity.new(
  title: "Randonnée Calanques Morgiou",
  description: "La description est ici en attendant",
  meeting_point: "20 rue haxo, Marseille",
  start_date: DateTime.new(2022, 7, 21, 8, 30),
  difficulty: 3,
  max_of_participant: 2,
  category_id: randonnee.id,
  user_id: user2.id
)
rando3.save!
rando3 = Activity.new(
  title: "Randonnée Calanques Morgiou",
  description: "La description est ici en attendant",
  meeting_point: "20 rue haxo, Marseille",
  start_date: DateTime.new(2022, 7, 21, 8, 30),
  difficulty: 3,
  max_of_participant: 2,
  category_id: randonnee.id,
  user_id: user2.id
)
rando3.save!
rando3 = Activity.new(
  title: "Randonnée Calanques Morgiou",
  description: "La description est ici en attendant",
  meeting_point: "20 rue haxo, Marseille",
  start_date: DateTime.new(2022, 7, 21, 8, 30),
  difficulty: 3,
  max_of_participant: 2,
  category_id: randonnee.id,
  user_id: user2.id
)
rando3.save!
rando3 = Activity.new(
  title: "Randonnée Calanques Morgiou",
  description: "La description est ici en attendant",
  meeting_point: "20 rue haxo, Marseille",
  start_date: DateTime.new(2022, 7, 21, 8, 30),
  difficulty: 3,
  max_of_participant: 2,
  category_id: randonnee.id,
  user_id: user2.id
)
rando3.save!

rando9 = Activity.new(
  title: "Randonnée Calanques Sugiton",
  description: "La description est ici en attendant",
  meeting_point: "20 rue haxo, Marseille",
  start_date: DateTime.new(2022, 8, 21, 11, 30),
  difficulty: 3,
  max_of_participant: 2,
  category_id: randonnee.id,
  user_id: user1.id
)
rando9.save!
