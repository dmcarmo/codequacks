  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Review.destroy_all
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
file = URI.open('https://assets.onbuy.com/i26/product/f681eec013ce4742a40ec97d8e24a9b9-m502897/sunny-cool-sunglasses-rubber-duck-fun-pool-or-bath-toy.jpg')
java_script.photo.attach(io: file, filename: 'nes1.png', content_type: 'image/jpg')

database = Duck.create(name: "Database", description: "A helper class to manage database creation and version management. You create a subclass implementing onCreate(SQLiteDatabase.", price: 10.00, user: isaline)
file = URI.open('https://www.amsterdamduckstore.com/wp-content/uploads/2017/07/Trump-rubber-duck-Amsterdam-Duck-Store.jpg')
database.photo.attach(io: file, filename: 'nes2.png', content_type: 'image/png')

css = Duck.create(name: "CSS", description: "Well organized and easy to understand Web building tutorials with lots of examples of how to use CSS", price: 15.00, user: sylvia)
file = URI.open('https://www.amsterdamduckstore.com/wp-content/uploads/2015/07/superwoman-rubber-duck-leaning.jpg')
css.photo.attach(io: file, filename: 'nes3.png', content_type: 'image/png')

html = Duck.create(name: "HTML", description: "Well organized and easy to understand Web building tutorials with lots of examples of how to use HTML", price: 15.00, user: david_carmo)
file = URI.open('https://smhttp-ssl-79234.nexcesscdn.net/pub/media/catalog/product/cache/207e23213cf636ccdef205098cf3c8a3/vender-PL/17138/RD140-YEL_ab-prime_item_9.jpg')
html.photo.attach(io: file, filename: 'nes4.png', content_type: 'image/png')

rails = Duck.create(name: "Rails", description: "The Rails framework provides a large number of helpers for working with assets, dates, forms, numbers and model objects, to name a few.", price: 20.00, user: david_wylie)
file = URI.open('https://www.amsterdamduckstore.com/wp-content/uploads/2015/07/doctor-man-rubber-duck-leaning.jpg')
rails.photo.attach(io: file, filename: 'nes5.png', content_type: 'image/png')

ruby = Duck.create(name: "Ruby", description: "This is a small Ruby tutorial that should take no more than 20 minutes to complete. It makes the assumption that you already have Ruby installed.", price: 30.00, user: david_wylie)
file = URI.open('https://cdn.shopify.com/s/files/1/0604/4801/products/SG-REYTD-JCNYO_1024x1024_clipped_rev_1-min.jpeg')
ruby.photo.attach(io: file, filename: 'nes6.png', content_type: 'image/png')

puts "Finished!"

puts "Creating bookings..."
booking_1 = Booking.create(user: isaline, duck: java_script, start_time: DateTime.strptime("09/7/2020 8:00", "%d/%m/%Y %H:%M"), end_time: DateTime.strptime("16/7/2020 8:00", "%d/%m/%Y %H:%M"), total_cost: 30)
booking_2 = Booking.create(user: david_wylie, duck: ruby, start_time: DateTime.strptime("08/7/2020 6:00", "%d/%m/%Y %H:%M"), end_time: DateTime.strptime("10/7/2020 10:00", "%d/%m/%Y %H:%M"), total_cost: 45)
booking_3 = Booking.create(user: david_carmo, duck: rails, start_time: DateTime.strptime("08/2/2021 6:00", "%d/%m/%Y %H:%M"), end_time: DateTime.strptime("06/3/2021 12:00", "%d/%m/%Y %H:%M"), total_cost: 40)
booking_4 = Booking.create(user: sylvia, duck: css, start_time: DateTime.strptime("08/12/2023 6:00", "%d/%m/%Y %H:%M"), end_time: DateTime.strptime("09/12/2023 5:00", "%d/%m/%Y %H:%M"), total_cost: 75)
booking_5 = Booking.create(user: david_carmo, duck: html, start_time: DateTime.strptime("06/8/2020 6:00", "%d/%m/%Y %H:%M"), end_time: DateTime.strptime("09/9/2020 3:00", "%d/%m/%Y %H:%M"), total_cost: 75)


puts "Creating reviews..."
review_1 = Review.create(booking: booking_1, rating: 4, content: "I play with this duck and my cat every night for one year.")
review_2 = Review.create(booking: booking_2, rating: 5, content: "As a wife and mother, I LOVE this duck. It keeps me in my place, allows me to get dinner ready on time, AND only costs 72 percent more than other ducks.")
review_3 = Review.create(booking: booking_3, rating: 4, content: "Serves as a wonderful pet and a delicious snack")
review_4 = Review.create(booking: booking_4, rating: 5, content: "Really takes my breath away")
review_5 = Review.create(booking: booking_5, rating: 3, content: "Very nice addition to the living room")

puts "Finished!"
