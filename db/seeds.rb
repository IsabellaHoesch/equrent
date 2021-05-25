# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
user = User.create(name: "Armen", password: "1234567", email: "arkooo@gmail.com", profile_img: "", description: "In thee end")
puts "#{user.name}"
10.times do
  offer = Offer.new(
    offer_type: ["equipment", "facility"].sample,
    description: Faker::Quote.famous_last_words,
    offer_img: Faker::LoremFlickr.image(size: "50x60", search_terms: ['sports']),
    sport_type: ["basketball", "football", "volleyball", "ping pong", "ski", "hiking", "kanu", "rackets", "treeclimbing"].sample,
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
