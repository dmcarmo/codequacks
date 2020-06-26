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
file = URI.open('https://assets.onbuy.com/i26/product/f681eec013ce4742a40ec97d8e24a9b9-m502897/sunny-cool-sunglasses-rubber-duck-fun-pool-or-bath-toy.jpg')
java_script.photo.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
java_script.save!

database = Duck.new(name: "Greatest Database Duck, just really great", description: "What I've seen, what I've seen is so bad, because I am the greatest, just really great, we'll got, like you wouldn't believe data, so much data, all the data, database duck you'll ever find, other so call The Donalds that are ducks are just losers! The concept of global warming was created by and for the Chinese in order to make U.S. manufacturing non-competitive.", price: 10.00, user: isaline)
file = URI.open('https://www.amsterdamduckstore.com/wp-content/uploads/2017/07/Trump-rubber-duck-Amsterdam-Duck-Store.jpg')
database.photo.attach(io: file, filename: 'nes2.png', content_type: 'image/png')
database.save!

css = Duck.new(name: "CSSuperwoman", description: "Relax citizen! I will fix all your CSS troubles faster than a speeding bullet!", price: 15.00, user: sylvia)
file = URI.open('https://www.amsterdamduckstore.com/wp-content/uploads/2015/07/superwoman-rubber-duck-leaning.jpg')
css.photo.attach(io: file, filename: 'nes3.png', content_type: 'image/png')
css.save!

html = Duck.new(name: "Dr. H.T Emell", description: "Well organized and easy to understand Web building tutorials with lots of examples of how to use HTML", price: 15.00, user: david_carmo)
file = URI.open('https://smhttp-ssl-79234.nexcesscdn.net/pub/media/catalog/product/cache/207e23213cf636ccdef205098cf3c8a3/vender-PL/17138/RD140-YEL_ab-prime_item_9.jpg')
html.photo.attach(io: file, filename: 'nes4.png', content_type: 'image/png')
html.save!

rails = Duck.new(name: "Dr. Ruabbi O'Railly", description: "The Rails framework provides a large number of helpers for working with assets, dates, forms, numbers and model objects, to name a few.", price: 20.00, user: david_wylie)
file = URI.open('https://www.amsterdamduckstore.com/wp-content/uploads/2015/07/doctor-man-rubber-duck-leaning.jpg')
rails.photo.attach(io: file, filename: 'nes5.png', content_type: 'image/png')
rails.save!

ruby = Duck.new(name: "Albert Nodestein", description: "The definition of insanity is doing the same thing over and over again, but expecting different results...so put in a ticket you fool!", price: 30.00, user: david_wylie)
file = URI.open('https://cdn.shopify.com/s/files/1/0604/4801/products/SG-REYTD-JCNYO_1024x1024_clipped_rev_1-min.jpeg')
ruby.photo.attach(io: file, filename: 'nes6.png', content_type: 'image/png')
ruby.save!

php = Duck.new(name: "Ms Peppermint H Potter", description: "Please take your seat, you are already far behind in your coding study to be lollygagging around!.", price: 30.00, user: david_wylie)
file = URI.open('https://cdn11.bigcommerce.com/s-nf2x4/images/stencil/1280x1280/products/617/10155/Teacher-Female-Star-Rubber-Duck-DITW-3__58501.1568745303.jpg?c=2&imbypass=on')
php.photo.attach(io: file, filename: 'nes7.png', content_type: 'image/png')
php.save!

python = Duck.new(name: "Pie? aye son!", description: "O ye'll tak' the high road, and I'll tak' the low road, And I'll be in Scodeland a'fore ye...", price: 30.00, user: david_wylie)
file = URI.open('https://www.nationalgalleries.org/sites/default/files/product_images/bagpiper3.jpg')
python.photo.attach(io: file, filename: 'nes8.png', content_type: 'image/png')
python.save!

node = Duck.new(name: "Fire Duckpartment", description: "If your keyboard bursts into flames from frantic coding, I'll deal with it!.", price: 30.00, user: david_wylie)
file = URI.open('https://s3.distributorcentral.com/uploads/7/D/7DE4346F10E829665D56058B8B92FBE3.jpg')
node.photo.attach(io: file, filename: 'nes9.png', content_type: 'image/png')
node.save!

swift = Duck.new(name: "Swift Experte", description: "This is a small Ruby tutorial that should take no more than 20 minutes to complete. It makes the assumption that you already have Ruby installed.", price: 30.00, user: david_wylie)
file = URI.open('https://i.ebayimg.com/images/g/CqwAAOSwXI1eQdnW/s-l640.jpg')
swift.photo.attach(io: file, filename: 'nes10.png', content_type: 'image/png')
swift.save!

cpp = Duck.new(name: "PoliC++e Duck", description: "This is a small Ruby tutorial that should take no more than 20 minutes to complete. It makes the assumption that you already have Ruby installed.", price: 30.00, user: david_wylie)
file = URI.open('https://cdn.shopify.com/s/files/1/1011/8106/products/040TB-London-Rubber-Ducks---Policeman_1024x.jpg?v=1549638278')
cpp.photo.attach(io: file, filename: 'nes11.png', content_type: 'image/png')
cpp.save!

java = Duck.new(name: "Monsieur Ja'Va", description: "This is a small Ruby tutorial that should take no more than 20 minutes to complete. It makes the assumption that you already have Ruby installed.", price: 30.00, user: david_wylie)
file = URI.open('https://lilalu-shop.com/media/image/9b/95/64/lilalu-quietscheente-rubber-duck-franzose-rotwein-baguette-french-wine-seine-eifelturm-eifel-tower_600x600.jpg')
java.photo.attach(io: file, filename: 'nes12.png', content_type: 'image/png')
java.save!

github = Duck.new(name: "Github Explorer", description: "This is a small Ruby tutorial that should take no more than 20 minutes to complete. It makes the assumption that you already have Ruby installed.", price: 30.00, user: david_wylie)
file = URI.open('https://www.duckshop.com/shop_cfg/rubberducks/Badeente-5165_1_.JPG')
github.photo.attach(io: file, filename: 'nes13.png', content_type: 'image/png')
github.save!


puts "Finished!"

puts "Creating bookings..."
booking_1 = Booking.create(user: isaline, duck: java_script, start_time: DateTime.strptime("09/7/2020 8:00", "%d/%m/%Y %H:%M"), end_time: DateTime.strptime("16/7/2020 8:00", "%d/%m/%Y %H:%M"), total_cost: 30)
booking_2 = Booking.create(user: david_wylie, duck: ruby, start_time: DateTime.strptime("08/7/2020 6:00", "%d/%m/%Y %H:%M"), end_time: DateTime.strptime("10/7/2020 10:00", "%d/%m/%Y %H:%M"), total_cost: 45)
booking_3 = Booking.create(user: david_carmo, duck: rails, start_time: DateTime.strptime("08/2/2021 6:00", "%d/%m/%Y %H:%M"), end_time: DateTime.strptime("06/3/2021 12:00", "%d/%m/%Y %H:%M"), total_cost: 40)
booking_4 = Booking.create(user: sylvia, duck: css, start_time: DateTime.strptime("08/12/2023 6:00", "%d/%m/%Y %H:%M"), end_time: DateTime.strptime("09/12/2023 5:00", "%d/%m/%Y %H:%M"), total_cost: 75)
booking_5 = Booking.create(user: david_carmo, duck: html, start_time: DateTime.strptime("06/8/2020 6:00", "%d/%m/%Y %H:%M"), end_time: DateTime.strptime("09/9/2020 3:00", "%d/%m/%Y %H:%M"), total_cost: 75)

puts "Finished!"

puts "Creating reviews..."
review_1 = Review.create(booking: booking_1, rating: 4, content: "I play with this duck and my cat every night for one year.")
review_2 = Review.create(booking: booking_2, rating: 5, content: "As a wife and mother, I LOVE this duck. It keeps me in my place, allows me to get dinner ready on time, AND only costs 72 percent more than other ducks.")
review_3 = Review.create(booking: booking_3, rating: 4, content: "Serves as a wonderful pet and a delicious snack")
review_4 = Review.create(booking: booking_4, rating: 5, content: "Really takes my breath away")
review_5 = Review.create(booking: booking_5, rating: 3, content: "Very nice addition to the living room")

puts "Finished!"
