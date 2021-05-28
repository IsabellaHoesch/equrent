# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"
User.destroy_all
Offer.destroy_all
user1 = User.create(name: "Armen", password: "1234567", email: "arkooo@gmail.com", profile_img: "", description: "In thee end")
user2 = User.create(name: "Andrea", password: "1234567", email: "andrea@gmail.com", profile_img: "", description: "Loves coins")
puts "User 1: #{user1.name}"
puts "User 2: #{user2.name}"
# 10.times do
#   sport = ["basketball", "football", "volleyball", "ping-pong", "ski", "hiking", "kanu", "rackets", "treeclimbing"].sample
#   offer = Offer.new(
#     name: Faker::Coin.name,
#     offer_type: ["equipment", "facility"].sample,
#     description: Faker::books::Lovecraft.sentence(word_count: 8),
#     offer_img: Faker::LoremFlickr.image(size: "300x100", search_terms: [sport]),
#     sport_type: sport,
#     price: rand(1..30),
#     address: ["Implerstrasse 40, München", "Kaufingerstraße 2, München", "Sonnenstraße 13, München", "Linkstraße 108, München", "Augustenstraße 4, München", "Tengstraße 14, München"].sample,
#     longitude: "",
#     latitude: "",
#     user: user
#     )
#   offer.save!
#   puts "#{offer.sport_type} created."
# end
photo1 = "https://jaisairam.xyz/images/1448838000_1662651f7f781a887707a2836033aa63.jpg"
offer = Offer.new(name: "Great volleyball", offer_type: "Equipment", description: "Needs air pumping", sport_type: "Volleyball", address: "Schleißheimer Straße 60, München", offer_img: "#{photo1}", price: 20, user: user1)
file = URI.open("#{photo1}")
offer.photo.attach(io: file, filename: '1.png', content_type: 'image/png')
offer.save

photo2 = "https://images.pexels.com/photos/976873/pexels-photo-976873.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
offer = Offer.new(name: "Ping-pong rackets", offer_type: "Equipment", description: "2 years old but still great", sport_type: "Ping-Pong", address: "Hessstrasse 13, München", offer_img: "#{photo2}", price: 10, user: user1)
file = URI.open("#{photo2}")
offer.photo.attach(io: file, filename: '2.png', content_type: 'image/png')
offer.save

photo3 = "https://images.pexels.com/photos/5589287/pexels-photo-5589287.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
offer = Offer.new(name: "2-person tent", offer_type: "Equipment", description: "Feels like a villa", sport_type: "Hiking", address: "Prinzregentenplatz 13, München", offer_img: "#{photo3}", price: 20, user: user1)
file = URI.open("#{photo3}")
offer.photo.attach(io: file, filename: '3.png', content_type: 'image/png')
offer.save

photo4 = "https://images.pexels.com/photos/2749500/pexels-photo-2749500.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
offer = Offer.new(name: "Kanu - 2 people", offer_type: "Equipment", description: "Kanu with paddles", sport_type: "Kanu", address: "Elisabethstr 4, München", offer_img: "#{photo4}", price: 10, user: user1)
file = URI.open("#{photo4}")
offer.photo.attach(io: file, filename: '4.png', content_type: 'image/png')
offer.save


photo5 = "https://images.pexels.com/photos/5477834/pexels-photo-5477834.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
offer = Offer.new(name: "Volleyball net", offer_type: "Equipment", description: "Comes without polls", sport_type: "Volleyball", address: "Preysingstr 34, München", offer_img: "#{photo5}", price: 10, user: user1)
file = URI.open("#{photo5}")
offer.photo.attach(io: file, filename: '5.png', content_type: 'image/png')
offer.save

photo6 = "https://images.pexels.com/photos/1753689/pexels-photo-1753689.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
offer = Offer.new(name: "2 year surfboard", offer_type: "Equipment", description: "Perfect for riversurfing", sport_type: "Surfing", address: "Balanstr 5, München", offer_img: "#{photo6}", price: 10, user: user1)
file = URI.open("#{photo6}")
offer.photo.attach(io: file, filename: '6.png', content_type: 'image/png')
offer.save

photo7 = "https://images.pexels.com/photos/12057/pexels-photo-12057.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
offer = Offer.new(name: "Sleeping bag", offer_type: "Equipment", description: "Really thick. Perfect for Iglu-adventures", sport_type: "Hiking", address: "Balanstr 60, München", offer_img: "#{photo7}", price: 10, user: user1)
file = URI.open("#{photo7}")
offer.photo.attach(io: file, filename: '7.png', content_type: 'image/png')
offer.save

photo8 = "https://images.pexels.com/photos/3217911/pexels-photo-3217911.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
offer = Offer.new(name: "Hiking backpack", offer_type: "Equipment", description: "60l. 2 years old. Love it but got myself a new one", sport_type: "Hiking", address: "Theresienstr 4, München", offer_img: "#{photo8}", price: 10, user: user1)
file = URI.open("#{photo8}")
offer.photo.attach(io: file, filename: '8.png', content_type: 'image/png')
offer.save

photo9 = "https://i.pinimg.com/originals/be/a3/9a/bea39afe25beeaed89aceaa0d4e7580b.jpg"
offer = Offer.new(name: "Skateboard", offer_type: "Equipment", description: "Beautiful longboard. Got it in California and it is so much fun to ride!", sport_type: "Skate-boarding", address: "Theresienstr 40, München", offer_img: "#{photo9}", price: 10, user: user2)
file = URI.open("#{photo9}")
offer.photo.attach(io: file, filename: '9.png', content_type: 'image/png')
offer.save

photo10 = "https://cdn.shopify.com/s/files/1/0004/6746/8319/products/improller1_19999_9_1000x.jpg?v=1611591229"
offer = Offer.new(name: "Skating", offer_type: "Equipment", description: "Disco-skates", sport_type: "Skating", address: "Hiltenspergerstr 4, München", offer_img: "#{photo10}", price: 10, user: user2)
file = URI.open("#{photo10}")
offer.photo.attach(io: file, filename: '10.png', content_type: 'image/png')
offer.save

photo11 = "https://www.switchbacktravel.com/sites/default/files/image_fields/Best%20Of%20Gear%20Articles/Skiing/Backcountry%20Skis/Backcountry%20Skis%20(DPS%20Lotus).jpg"
offer = Offer.new(name: "Skating", offer_type: "Equipment", description: "Touring skis, only one season old.", sport_type: "Skiing", address: "Hiltenspergerstr 15, München", offer_img: "#{photo11}", price: 10, user: user2)
file = URI.open("#{photo11}")
offer.photo.attach(io: file, filename: '11.png', content_type: 'image/png')
offer.save

photo12 = "https://m.media-amazon.com/images/I/71FEmfDYZ2L._AC_UL1500_.jpg"
offer = Offer.new(name: "Climbing shoes", offer_type: "Equipment", description: "Climbing shoes, size 39", sport_type: "Climbing", address: "Augustenstr 20, München", offer_img: "#{photo12}", price: 15, user: user2)
file = URI.open("#{photo12}")
offer.photo.attach(io: file, filename: '12.png', content_type: 'image/png')
offer.save

photo13 = "https://www.ispo.com/sites/default/files/styles/content_width_phone/public/2018-07/Protest_SS18_Action_Indonesia_020.jpg?itok=9SRvQ8cd"
offer = Offer.new(name: "Standup paddle board", offer_type: "Equipment", description: "Standup paddle board, for rrelaxation and meditation", sport_type: "SUP", address: "Augustenstr 10, München", offer_img: "#{photo13}", price: 5, user: user2)
file = URI.open("#{photo13}")
offer.photo.attach(io: file, filename: '13.png', content_type: 'image/png')
offer.save

photo14 = "https://www.rogueeurope.eu/media/catalog/product/cache/5/image/1500x1500/9df78eab33525d08d6e5fb8d27136e95/s/p/spike-ball-th.jpg"
offer = Offer.new(name: "Spikeball kit", offer_type: "Equipment", description: "Spikeball - fun to play with friends!", sport_type: "Spikeball", address: "Schleißheimerstr 0, München", offer_img: "#{photo14}", price: 25, user: user1)
file = URI.open("#{photo14}")
offer.photo.attach(io: file, filename: '14.png', content_type: 'image/png')
offer.save

photo15 = "https://windsurf.de/media/image/1a/0a/23/JP_AllroundAir_2021_SL_600x600@2x.jpg"
offer = Offer.new(name: "My second SUP", offer_type: "Equipment", description: "Borrow my SUP if you want", sport_type: "SUP", address: "Schertlinstr.19, München", offer_img: "#{photo15}", price: 55, user: user2)
file = URI.open("#{photo15}")
offer.photo.attach(io: file, filename: '15.png', content_type: 'image/png')
offer.save

photo16 = "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRUztWtsiJcnDh5Mv8F2GmO-xc-ZFA0mV_ROEqSHnFakbhpAP2RfqFiudv67Q&usqp=CAc"
offer = Offer.new(name: "My brothers Surfboard", offer_type: "Equipment", description: "My brother left town, contact me if you want to rent his surfboard. he got other stuff too", sport_type: "Surfboard", address: "Max-Weber-Platz 5, München", offer_img: "#{photo16}", price: 18, user: user2)
file = URI.open("#{photo16}")
offer.photo.attach(io: file, filename: '16.png', content_type: 'image/png')
offer.save

photo17 = "https://static.bergzeit.de/out/pictures-imago/generated/product/2d/dd/610x610/5006532-001_pic1_kong-herren-gipsy-klemmgerat-set-4-6_kong-herren-gipsy-klemmgerat-set-4-6.jpg"
offer = Offer.new(name: "Climbing hooks", offer_type: "Equipment", description: "Come play with my climbing gear. I barely find time to use it, but its perfect for climbing. Rent it!", sport_type: "Climbing", address: "Bayerstraße 15, München", offer_img: "#{photo17}", price: 5, user: user2)
file = URI.open("#{photo17}")
offer.photo.attach(io: file, filename: '17.png', content_type: 'image/png')
offer.save

photo18 = "https://pimage.sport-thieme.de/detail-fillscale-webp/spikeball-pro/133-5617"
offer = Offer.new(name: "My beautiful spikeball", offer_type: "Equipment", description: "Use my spikeball set. I never used it but I heard its great fun", sport_type: "Spikeball", address: "Hauptstr. 8, Kühlenthal", offer_img: "#{photo18}", price: 5, user: user2)
file = URI.open("#{photo18}")
offer.photo.attach(io: file, filename: '18.png', content_type: 'image/png')
offer.save

photo19 = "https://www.thamescentre.on.ca/sites/default/files/styles/open_graph_image/public/images/2019-06/xxxx_spo_ocr-l-soccer-generic-stock-001-5.jpg?h=c00a0a28&itok=quh8lLR1"
offer = Offer.new(name: "Simple football", offer_type: "Equipment", description: "Football for anywhere and anyone!", sport_type: "Football", address: "Zellerstr. 8, Ebenhausen", offer_img: "#{photo19}", price: 5, user: user2)
file = URI.open("#{photo19}")
offer.photo.attach(io: file, filename: '19.png', content_type: 'image/png')
offer.save

# photo20 = "https://www.rei.com/dam/van_dragt_092217_1030_kayaking_basics_lg.jpg"
# offer = Offer.new(name: "Original 1950 Kayak", offer_type: "Equipment", description: "Rent my old kayak. Fix the hole and youre good to go!", sport_type: "Kayak", address: "Hauptstr. 8, Wörthsee", offer_img: "#{photo20}", price: 40, user: user2)
# file = URI.open("#{photo20}")
# offer.photo.attach(io: file, filename: '20.png', content_type: 'image/png')
# offer.save

photo21 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6CWnUUqqXS0SPyAfmrOeIzKRfF4Jwe-gHdA&usqp=CAU"
offer = Offer.new(name: "Used Handball", offer_type: "Equipment", description: "If you want to touch the World Cup 1988 Handball, you can rent it and play with it. Rarity. Thats me holding the ball.", sport_type: "Handball", address: "Hauptstr. 8, Starnberg", offer_img: "#{photo21}", price: 70, user: user2)
file = URI.open("#{photo21}")
offer.photo.attach(io: file, filename: '21.png', content_type: 'image/png')
offer.save

puts "Successfully seeeeeeeeeeeedeeeeeeeeeeeed xD"