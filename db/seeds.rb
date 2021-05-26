# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Offer.destroy_all

user = User.create(name: "Armen", password: "1234567", email: "arkooo@gmail.com", profile_img: "", description: "In thee end")
puts "#{user.name}"
10.times do
  offer = Offer.new(
    name: Faker::Coin.name,
    offer_type: ["equipment", "facility"].sample,
    description: Faker::Books::Lovecraft.sentence(word_count: 8),
    offer_img: Faker::LoremFlickr.image(size: "50x60", search_terms: ['sports']),
    sport_type: ["basketball", "football", "volleyball", "ping-pong", "ski", "hiking", "kanu", "rackets", "treeclimbing"].sample,
    price: rand(1..30),
    address: Faker::Address.street_address,
    longitude: "",
    latitude: "",
    user: user
    )
  offer.save!
  puts "#{offer.sport_type} created."
end

puts "Successfully seeeeeeeeeeeedeeeeeeeeeeeed xD"

Offer.create(name: "Hiking shoes", offer_type:"equipment", description: "Hiking shoes from company colombia bought 1 year ago", sport_type: "hiking", address: "Varnhagenstrasse 24, München", offer_img: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.qishKHwBYsPxz8VzHbJ0SwHaEK%26pid%3DApi&f=1", price: 20, user: user1)
Offer.create(name: "A ball to shoot", offer_type: "equipment", description: "a ball from euro2008", sport_type: "football", address: "Perlacher Strasse 20, München", offer_img: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.ebayimg.com%2Fimages%2Fg%2FWDEAAOSwIKVeM-Tn%2Fs-l300.jpg&f=1&nofb=1", price: 15, user: user2)
Offer.create(name: "Kanu boot", offer_type: "equipment", description: "Kanu kajak from v. Wildholz", sport_type: "kanu", address: "Jahnstrasse 10, Ottobrunn", offer_img: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2F736x%2F72%2F74%2F53%2F7274535bad06c571e5f652ea19fda109--wood-wood-wood-art.jpg&f=1&nofb=1", price: 70, user: user1)
