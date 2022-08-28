  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Destroying reviews..."
Review.destroy_all
puts "Destroying bookings..."
Booking.destroy_all
puts "Destroying ducks..."
Duck.destroy_all
puts "Destroying users..."
User.destroy_all
puts "Finished!"

puts "Creating users..."
david_carmo = User.create(email: "david_carmo@email.com", password: "pull-requests")
david_wylie = User.create(email: "david_wylie@email.com", password: "whereisthesun?")
isaline = User.create(email: "isaline@email.com" , password: "whenisitsix?")
sylvia = User.create(email: "sylvia@email.com", password: "iloverubberducks")

puts "Finished!"

puts "Creating ducks..."
java_script = Duck.new(name: "Jay Scripped", description: "Useful javascript functions and classes. The main helper is fw , an object containing constants, methods and classes.", price: 23.00, user: sylvia)
file = URI.open('https://res.cloudinary.com/doh7xoars/image/upload/v1661727814/codequacks/seeds/jay_scripped_rdbhc1.jpg')
java_script.photo.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
java_script.save!

database = Duck.new(name: "Greatest Database Duck, just really great", description: "What I've seen, what I've seen is so bad, because I am the greatest, just really great, we'll got, like you wouldn't believe data, so much data, all the data, database duck you'll ever find, other so call The Donalds that are ducks are just losers! The concept of global warming was created by and for the Chinese in order to make U.S. manufacturing non-competitive.", price: 10.00, user: isaline)
file = URI.open('https://res.cloudinary.com/doh7xoars/image/upload/v1661727814/codequacks/seeds/greatest_database_duck_r0u0kq.jpg')
database.photo.attach(io: file, filename: 'nes2.png', content_type: 'image/png')
database.save!

css = Duck.new(name: "CSSuperwoman", description: "Relax citizen! I will fix all your CSS troubles faster than a speeding bullet!", price: 15.00, user: sylvia)
file = URI.open('https://res.cloudinary.com/doh7xoars/image/upload/v1661727814/codequacks/seeds/cssuperwoman_fgwjux.jpg')
css.photo.attach(io: file, filename: 'nes3.png', content_type: 'image/png')
css.save!

html = Duck.new(name: "Dr. H.T Emell", description: "Well organized and easy to understand Web building tutorials with lots of examples of how to use HTML", price: 15.00, user: david_carmo)
file = URI.open('https://res.cloudinary.com/doh7xoars/image/upload/v1661727814/codequacks/seeds/dr_h_t_emell_lotclj.jpg')
html.photo.attach(io: file, filename: 'nes4.png', content_type: 'image/png')
html.save!

rails = Duck.new(name: "Dr. Ruabbi O'Railly", description: "The Rails framework provides a large number of helpers for working with assets, dates, forms, numbers and model objects, to name a few.", price: 20.00, user: david_wylie)
file = URI.open('https://res.cloudinary.com/doh7xoars/image/upload/v1661727814/codequacks/seeds/dr_ruabbi_o_railly_hxm5db.jpg')
rails.photo.attach(io: file, filename: 'nes5.png', content_type: 'image/png')
rails.save!

ruby = Duck.new(name: "Albert Nodestein", description: "The definition of insanity is doing the same thing over and over again, but expecting different results...so put in a ticket you fool!", price: 30.00, user: david_wylie)
file = URI.open('https://res.cloudinary.com/doh7xoars/image/upload/v1661727814/codequacks/seeds/albert_nodestein_bhllos.jpg')
ruby.photo.attach(io: file, filename: 'nes6.png', content_type: 'image/png')
ruby.save!

php = Duck.new(name: "Ms Peppermint H Potter", description: "Please take your seat, you are already far behind in your coding study to be lollygagging around!.", price: 30.00, user: david_wylie)
file = URI.open('https://res.cloudinary.com/doh7xoars/image/upload/v1661727815/codequacks/seeds/ms_peppermint_h_potter_japjuv.jpg')
php.photo.attach(io: file, filename: 'nes7.png', content_type: 'image/png')
php.save!

python = Duck.new(name: "Pie? aye son!", description: "O ye'll tak' the high road, and I'll tak' the low road, And I'll be in Scodeland a'fore ye...", price: 30.00, user: david_wylie)
file = URI.open('https://res.cloudinary.com/doh7xoars/image/upload/v1661727815/codequacks/seeds/pie_aye_son_skmvnn.jpg')
python.photo.attach(io: file, filename: 'nes8.png', content_type: 'image/png')
python.save!

node = Duck.new(name: "Fire Duckpartment", description: "If your keyboard bursts into flames from frantic coding, I'll deal with it!.", price: 30.00, user: david_wylie)
file = URI.open('https://res.cloudinary.com/doh7xoars/image/upload/v1661727814/codequacks/seeds/fire_duckpartment_t06j3b.jpg')
node.photo.attach(io: file, filename: 'nes9.png', content_type: 'image/png')
node.save!

swift = Duck.new(name: "Swift Experte", description: "This is a small Ruby tutorial that should take no more than 20 minutes to complete. It makes the assumption that you already have Ruby installed.", price: 30.00, user: david_wylie)
file = URI.open('https://res.cloudinary.com/doh7xoars/image/upload/v1661727815/codequacks/seeds/swift_experte_vhzbx5.jpg')
swift.photo.attach(io: file, filename: 'nes10.png', content_type: 'image/png')
swift.save!

cpp = Duck.new(name: "PoliC++e Duck", description: "This is a small Ruby tutorial that should take no more than 20 minutes to complete. It makes the assumption that you already have Ruby installed.", price: 30.00, user: david_wylie)
file = URI.open('https://res.cloudinary.com/doh7xoars/image/upload/v1661727815/codequacks/seeds/police_duck_cs7mnn.jpg')
cpp.photo.attach(io: file, filename: 'nes11.png', content_type: 'image/png')
cpp.save!

java = Duck.new(name: "Monsieur Ja'Va", description: "This is a small Ruby tutorial that should take no more than 20 minutes to complete. It makes the assumption that you already have Ruby installed.", price: 30.00, user: david_wylie)
file = URI.open('https://res.cloudinary.com/doh7xoars/image/upload/v1661727814/codequacks/seeds/monsieur_ja_va_lsmytn.jpg')
java.photo.attach(io: file, filename: 'nes12.png', content_type: 'image/png')
java.save!

github = Duck.new(name: "Github Explorer", description: "This is a small Ruby tutorial that should take no more than 20 minutes to complete. It makes the assumption that you already have Ruby installed.", price: 30.00, user: david_wylie)
file = URI.open('https://res.cloudinary.com/doh7xoars/image/upload/v1661727814/codequacks/seeds/github_explorer_gxahys.jpg')
github.photo.attach(io: file, filename: 'nes13.png', content_type: 'image/png')
github.save!


puts "Finished!"

puts "Creating bookings..."
booking_1 = Booking.create(user: isaline, duck: java_script, start_date: Date.strptime("09/7/2020", "%d/%m/%Y"), end_date: Date.strptime("16/7/2020", "%d/%m/%Y"))
booking_2 = Booking.create(user: david_wylie, duck: ruby, start_date: Date.strptime("08/7/2020", "%d/%m/%Y"), end_date: Date.strptime("10/7/2020", "%d/%m/%Y"))
booking_3 = Booking.create(user: david_carmo, duck: rails, start_date: Date.strptime("08/2/2021", "%d/%m/%Y"), end_date: Date.strptime("06/3/2021", "%d/%m/%Y"))
booking_4 = Booking.create(user: sylvia, duck: css, start_date: Date.strptime("08/12/2023", "%d/%m/%Y"), end_date: Date.strptime("09/12/2023", "%d/%m/%Y"))
booking_5 = Booking.create(user: david_carmo, duck: html, start_date: Date.strptime("06/8/2020", "%d/%m/%Y"), end_date: Date.strptime("09/9/2020", "%d/%m/%Y"))

puts "Finished!"

puts "Creating reviews..."
review_1 = Review.create(booking: booking_1, rating: 4, content: "I play with this duck and my cat every night for one year.")
review_2 = Review.create(booking: booking_2, rating: 5, content: "As a wife and mother, I LOVE this duck. It keeps me in my place, allows me to get dinner ready on time, AND only costs 72 percent more than other ducks.")
review_3 = Review.create(booking: booking_3, rating: 4, content: "Serves as a wonderful pet and a delicious snack")
review_4 = Review.create(booking: booking_4, rating: 5, content: "Really takes my breath away")
review_5 = Review.create(booking: booking_5, rating: 3, content: "Very nice addition to the living room")

puts "Finished!"
