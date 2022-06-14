# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Activity.destroy_all
Category.destroy_all
User.destroy_all

user1 = User.new(email: 'test@gmail.com', password: '123456', password_confirmation: '123456', first_name: 'tom', last_name: 'lol', address: '3 rue fortia, Marseille', phone:'0000000001', birth_date: 20000622)
user2 = User.new(email: 'azerty@gmail.com', password: '123456', password_confirmation: '123456', first_name: 'rachid', last_name: 'lol', address: '3 rue fortia, Marseille', phone:'0000000001', birth_date: 20000622)
user1.save
user2.save

randonnee = Category.new(name: "Randonnée", photo_path: 'rando.jpeg')
randonnee.save
yoga = Category.new(name: "Yoga", photo_path: 'yoga.jpeg')
yoga.save
tennis = Category.new(name: "Tennis", photo_path: 'tennis.jpeg')
tennis.save
escalade = Category.new(name: "Escalade", photo_path: 'escalade.jpeg')
escalade.save
rafting = Category.new(name: "Rafting", photo_path: 'rafting.jpeg')
rafting.save
vtt = Category.new(name: "VTT", photo_path: 'vtt.jpeg')
vtt.save

rando = Activity.new(title: "rando courir", start_date: 20220614, end_date: 20220615, description: "c'est la description", meeting_point: "calanques castellane", difficulty: 6, max_of_participant: 2, category_id: randonnee.id, user_id: user1.id)

yoga_par_terre = Activity.new(title: "yoga par terre", start_date: 20220614, end_date: 20220615, description: "c'est la description", meeting_point: "calanques castellane", difficulty: 6, max_of_participant: 2, category_id: yoga.id, user_id: user2.id)
rando.save
yoga_par_terre.save
