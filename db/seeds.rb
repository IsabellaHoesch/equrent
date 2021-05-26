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
  sport = ["basketball", "football", "volleyball", "ping-pong", "ski", "hiking", "kanu", "rackets", "treeclimbing"].sample
  offer = Offer.new(
    name: Faker::Coin.name,
    offer_type: ["equipment", "facility"].sample,
    description: Faker::Books::Lovecraft.sentence(word_count: 8),
    offer_img: Faker::LoremFlickr.image(size: "300x100", search_terms: [sport]),
    sport_type: sport,
    price: rand(1..30),
    address: ["Implerstrasse 40, München", "Kaufingerstraße 2, München", "Sonnenstraße 13, München", "Linkstraße 108, München", "Augustenstraße 4, München", "Tengstraße 14, München"].sample,
    longitude: "",
    latitude: "",
    user: user
    )
  offer.save!
  puts "#{offer.sport_type} created."
end

puts "Successfully seeeeeeeeeeeedeeeeeeeeeeeed xD"
