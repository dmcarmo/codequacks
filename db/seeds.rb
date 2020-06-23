# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Duck.destroy_all
User.destroy_all

puts "Creating users..."
david_carmo = User.create(email: "david_carmo@email.com", password: "pull-requests")
david_wylie = User.create(email: "david_wylie@email.com", password: "whereisthesun?")
isaline = User.create(email: "isaline@email.com" , password: "whenisitsix?")
sylvia = User.create(email: "sylvia@email.com", password: "iloverubberducks")

puts "Finished!"

puts "Creating ducks..."
java_script = Duck.create(name: "Java Script", description: "Useful javascript functions and classes. The main helper is fw , an object containing constants, methods and classes.", price: 23.00, user: sylvia)
database = Duck.create(name: "Database", description: "A helper class to manage database creation and version management. You create a subclass implementing onCreate(SQLiteDatabase.", price: 10.00, user: isaline)
css = Duck.create(name: "CSS", description: "Well organized and easy to understand Web building tutorials with lots of examples of how to use CSS", price: 15.00, user: sylvia)
html = Duck.create(name: "HTML", description: "Well organized and easy to understand Web building tutorials with lots of examples of how to use HTML", price: 15.00, user: david_carmo)
rails = Duck.create(name: "Rails", description: "The Rails framework provides a large number of helpers for working with assets, dates, forms, numbers and model objects, to name a few.", price: 20.00, user: david_wylie)
ruby = Duck.create(name: "Ruby", description: "Introduction. This is a small Ruby tutorial that should take no more than 20 minutes to complete. It makes the assumption that you already have Ruby installed.", price: 30.00, user: david_wylie)

puts "Finished!"

puts "Creating bookings..."
booking_1 = Booking.create(user: isaline, duck: java_script, start_time: DateTime.strptime("09/7/2020 8:00", "%d/%m/%Y %H:%M"), end_time: DateTime.strptime("16/7/2020 8:00", "%d/%m/%Y %H:%M"), total_cost: 30)
booking_1 = Booking.create(user: david_wylie, duck: ruby, start_time: DateTime.strptime("08/7/2020 6:00", "%d/%m/%Y %H:%M"), end_time: DateTime.strptime("10/7/2020 10:00", "%d/%m/%Y %H:%M"), total_cost: 45)
booking_3 = Booking.create(user: david_carmo, duck: rails, start_time: DateTime.strptime("08/2/2021 6:00", "%d/%m/%Y %H:%M"), end_time: DateTime.strptime("06/3/2021 12:00", "%d/%m/%Y %H:%M"), total_cost: 40)
booking_4 = Booking.create(user: sylvia, duck: css, start_time: DateTime.strptime("08/12/2023 6:00", "%d/%m/%Y %H:%M"), end_time: DateTime.strptime("09/12/2023 5:00", "%d/%m/%Y %H:%M"), total_cost: 75)
booking_5 = Booking.create(user: david_carmo, duck: html, start_time: DateTime.strptime("06/8/2020 6:00", "%d/%m/%Y %H:%M"), end_time: DateTime.strptime("09/9/2020 3:00", "%d/%m/%Y %H:%M"), total_cost: 28)

puts "Finished!"

