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
photo1 = "https://heidelberger-tv.de/wp-content/uploads/miguel-teirlinck-VDkRsT649C0-unsplash_Volleyball-1-1080x675.jpg"
offer = Offer.new(name: "Great volleyball", offer_type: "Equipment", description: "needs air pumping", sport_type: "Volleyball", address: "Schleißheimer Straße 60, München", offer_img: "#{photo1}", price: 20, user: user1)
file = URI.open("#{photo1}")
offer.photo.attach(io: file, filename: '1.png', content_type: 'image/png')
offer.save
photo2 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdWgqXDkSu9eZ7YrSwRd-cZz8QwG1iTH03sA&usqp=CAU"
offer = Offer.new(name: "Ping-pong rackets", offer_type: "Equipment", description: "2 years old but still great", sport_type: "Ping-Pong", address: "Hessstrasse 13, München", offer_img: "#{photo2}", price: 10, user: user1)
file = URI.open("#{photo2}")
offer.photo.attach(io: file, filename: '2.png', content_type: 'image/png')
offer.save
photo3 = "https://media.glampinghub.com/CACHE/images/accommodations/panorama-tented-pool-villas-koyao-island-resort-1501153263635/0c1c97bd8e06e559480e06f6f4579362.jpg"
offer = Offer.new(name: "2-person tent", offer_type: "Equipment", description: "feels like a villa", sport_type: "Hiking", address: "Prinzregentenplatz 13, München", offer_img: "#{photo3}", price: 20, user: user1)
file = URI.open("#{photo3}")
offer.photo.attach(io: file, filename: '3.png', content_type: 'image/png')
offer.save
photo4 = "https://img.nauticexpo.de/images_ne/photo-g/21298-8942020.jpg"
offer = Offer.new(name: "Kanu - 2 people", offer_type: "Equipment", description: "kanu with paddles", sport_type: "Kanu", address: "Elisabethstr 4, München", offer_img: "#{photo4}", price: 10, user: user1)
file = URI.open("#{photo4}")
offer.photo.attach(io: file, filename: '4.png', content_type: 'image/png')
offer.save
photo5 = "https://www.gophersport.com/cmsstatic/img/615/G-86263-SpikeProVolleyBallSystem-SET-001-clean.jpg?medium"
offer = Offer.new(name: "Volleyball net", offer_type: "Equipment", description: "comes without polls", sport_type: "Volleyball", address: "Preysingstr 34, München", offer_img: "#{photo5}", price: 10, user: user1)
file = URI.open("#{photo5}")
offer.photo.attach(io: file, filename: '5.png', content_type: 'image/png')
offer.save
photo6 = "https://i.ebayimg.com/00/s/MTYwMFgxMTgx/z/6ygAAOSwEp1gp684/$_35.JPG"
offer = Offer.new(name: "2 year surfboard", offer_type: "Equipment", description: "Perfect for riversurfing", sport_type: "Surfing", address: "Balanstr 5, München", offer_img: "#{photo6}", price: 10, user: user1)
file = URI.open("#{photo6}")
offer.photo.attach(io: file, filename: '6.png', content_type: 'image/png')
offer.save
photo7 = "https://thepillmagazine.com/contents/wp-content/uploads/2020/09/ColetteMcerney_Indiancreek_01-1330x888-1.jpg"
offer = Offer.new(name: "Sleeping bag", offer_type: "Equipment", description: "Really thick. Perfect for Iglu-adventures", sport_type: "Hiking", address: "Balanstr 60, München", offer_img: "#{photo7}", price: 10, user: user1)
file = URI.open("#{photo7}")
offer.photo.attach(io: file, filename: '7.png', content_type: 'image/png')
offer.save
photo8 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQTQdNmiP_1uTo2HVl4EumO2G8xIrA98ecrw&usqp=CAU"
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

#isa

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
offer = Offer.new(name: "My brothers Surfboard", offer_type: "Equipment", description: "My brother left town, contact me if you want to rent his surfboard. he got other stuff too", sport_type: "Surfboard", address: "Max-Weber-Platz 5, München", offer_img: "#{photo16}", price: 80, user: user2)
file = URI.open("#{photo16}")
offer.photo.attach(io: file, filename: '16.png', content_type: 'image/png')
offer.save
photo17 = "https://static.bergzeit.de/out/pictures-imago/generated/product/2d/dd/610x610/5006532-001_pic1_kong-herren-gipsy-klemmgerat-set-4-6_kong-herren-gipsy-klemmgerat-set-4-6.jpg"
offer = Offer.new(name: "Climbing hooks", offer_type: "Equipment", description: "Come play with my climbing gear. I barely find time to use it, but its perfect for climbing. Rent it!", sport_type: "Climbing", address: "Bayerstraße 15, München", offer_img: "#{photo17}", price: 50, user: user2)
file = URI.open("#{photo17}")
offer.photo.attach(io: file, filename: '17.png', content_type: 'image/png')
offer.save
photo18 = "https://pimage.sport-thieme.de/detail-fillscale-webp/spikeball-pro/133-5617"
offer = Offer.new(name: "My beautiful spikeball", offer_type: "Equipment", description: "Use my spikeball set. I never used it but I heard its great fun", sport_type: "Spikeball", address: "Hauptstr. 8, Kühlenthal", offer_img: "#{photo18}", price: 50, user: user2)
file = URI.open("#{photo18}")
offer.photo.attach(io: file, filename: '14.png', content_type: 'image/png')
offer.save

puts "Successfully seeeeeeeeeeeedeeeeeeeeeeeed xD"