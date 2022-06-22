# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
Chatroom.destroy_all
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

yoga = Category.new(name: "Yoga", photo_path: 'yoga.jpg')
yoga.save
plongee = Category.new(name: "Plongée", photo_path: 'plongée.jpg')
plongee.save
surf = Category.new(name: "Surf", photo_path: 'surf.jpg')
surf.save
petanque = Category.new(name: "Pétanque", photo_path: 'petanque.jpg')
petanque.save
canyoning = Category.new(name: "Canyoning", photo_path: 'canyoning.jpg')
canyoning.save
musculation = Category.new(name: "Musculation", photo_path: 'musculation.jpg')
musculation.save
boxe = Category.new(name: "Boxe", photo_path: 'boxe.jpg')
boxe.save
paddle = Category.new(name: "Paddle", photo_path: 'paddle.jpg')
paddle.save
volley = Category.new(name: "Volley", photo_path: 'volley.jpg')
volley.save
randonnee = Category.new(name: "Randonnée", photo_path: 'rando.jpg')
randonnee.save
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
  description: "Randonnée sympa, tous niveaux acceptés",
  meeting_point: "20 rue haxo, Marseille",
  start_date: DateTime.new(2022, 7, 16, 10, 30),
  difficulty: 2,
  max_of_participant: 3,
  category_id: randonnee.id,
  user_id: user1.id
)
rando.save!

chat_rando = Chatroom.new(name: "Messagerie #{rando.title}", user_id: rando.user.id, activity_id: rando.id)
chat_rando.save

rando2 = Activity.new(
  title: "Randonnée Calanques Sugiton",
  description: "Rando nature pour débutants",
  meeting_point: "12 avenue de Luminy, Marseille",
  start_date: DateTime.new(2022, 7, 20, 11, 30),
  difficulty: 3,
  max_of_participant: 2,
  category_id: randonnee.id,
  user_id: user2.id
)
rando2.save!

chat_rando2 = Chatroom.new(name: "Messagerie #{rando2.title}", user_id: rando2.user.id, activity_id: rando2.id)
chat_rando2.save

rando3 = Activity.new(
  title: "Randonnée Calanques Morgiou",
  description: "Longue randonnée pour marcheurs endurants",
  meeting_point: "45 rue Falque, Marseille",
  start_date: DateTime.new(2022, 7, 6, 8, 30),
  difficulty: 6,
  max_of_participant: 2,
  category_id: randonnee.id,
  user_id: user2.id
)
rando3.save!

chat_rando3 = Chatroom.new(name: "Messagerie #{rando3.title}", user_id: rando3.user.id, activity_id: rando3.id)
chat_rando3.save

rando3 = Activity.new(
  title: "Randonnée Calanques Morgiou",
  description: "N'oubliez pas vos maillots de bain",
  meeting_point: "20 rue de Rome, Marseille",
  start_date: DateTime.new(2022, 7, 26, 8, 30),
  difficulty: 3,
  max_of_participant: 2,
  category_id: randonnee.id,
  user_id: user2.id
)
rando3.save!

chat_rando3 = Chatroom.new(name: "Messagerie #{rando3.title}", user_id: rando3.user.id, activity_id: rando3.id)
chat_rando3.save

rando3 = Activity.new(
  title: "Randonnée Marseilleveyre",
  description: "Venez découvrir le massif de Marseilleveyre",
  meeting_point: "20 rue haxo, Marseille",
  start_date: DateTime.new(2022, 7, 21, 8, 30),
  difficulty: 3,
  max_of_participant: 2,
  category_id: randonnee.id,
  user_id: user2.id
)
rando3.save!

chat_rando3 = Chatroom.new(name: "Messagerie #{rando3.title}", user_id: rando3.user.id, activity_id: rando3.id)
chat_rando3.save

rando3 = Activity.new(
  title: "Randonnée les Goudes",
  description: "Niveau intermédiaire, bonne condition physique requise",
  meeting_point: "8 chemin des Goudes, Marseille",
  start_date: DateTime.new(2022, 7, 19, 8, 30),
  difficulty: 5,
  max_of_participant: 2,
  category_id: randonnee.id,
  user_id: user2.id
)
rando3.save!

chat_rando3 = Chatroom.new(name: "Messagerie #{rando3.title}", user_id: rando3.user.id, activity_id: rando3.id)
chat_rando3.save

rando3 = Activity.new(
  title: "Randonnée Calanques de Port Pin",
  description: "Magnifique randonnée jusqu'à la plage de Port Pin",
  meeting_point: "3 boulevard Neptune, Marseille",
  start_date: DateTime.new(2022, 7, 21, 8, 30),
  difficulty: 3,
  max_of_participant: 2,
  category_id: randonnee.id,
  user_id: user2.id
)
rando3.save!

chat_rando3 = Chatroom.new(name: "Messagerie #{rando3.title}", user_id: rando3.user.id, activity_id: rando3.id)
chat_rando3.save

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

chat_rando3 = Chatroom.new(name: "Messagerie #{rando3.title}", user_id: rando3.user.id, activity_id: rando3.id)
chat_rando3.save

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

chat_rando9 = Chatroom.new(name: "Messagerie #{rando9.title}", user_id: rando9.user.id, activity_id: rando9.id)
chat_rando9.save
