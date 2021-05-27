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

user1 = User.create(name: "Armen", password: "1234567", email: "arkooo@gmail.com", profile_img: "", description: "In thee end")
user2 = User.create(name: "Andrea", password: "1234567", email: "andrea@gmail.com", profile_img: "", description: "Loves coins")

puts "User 1: #{user1.name}"
puts "User 2: #{user2.name}"
# 10.times do
#   sport = ["basketball", "football", "volleyball", "ping-pong", "ski", "hiking", "kanu", "rackets", "treeclimbing"].sample
#   offer = Offer.new(
#     name: Faker::Coin.name,
#     offer_type: ["equipment", "facility"].sample,
#     description: Faker::Books::Lovecraft.sentence(word_count: 8),
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

Offer.create(name: "Ping-pong rackets", offer_type: "equipment", description: "2 years old but still great", sport_type: "ping-pong", address: "Hessstrasse 13, München", offer_img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdWgqXDkSu9eZ7YrSwRd-cZz8QwG1iTH03sA&usqp=CAU", price: 10, user: user1)
Offer.create(name: "Great volleyball", offer_type: "equipment", description: "needs air pumping", sport_type: "volleyball", address: "Schleißheimer Straße 60, München", offer_img: "https://heidelberger-tv.de/wp-content/uploads/miguel-teirlinck-VDkRsT649C0-unsplash_Volleyball-1-1080x675.jpg", price: 20, user: user1)
Offer.create(name: "2-person tent", offer_type: "equipment", description: "feels like a villa", sport_type: "hiking", address: "Prinzregentenplatz 13, München", offer_img: "https://media.glampinghub.com/CACHE/images/accommodations/panorama-tented-pool-villas-koyao-island-resort-1501153263635/0c1c97bd8e06e559480e06f6f4579362.jpg", price: 50, user: user1)
Offer.create(name: "Volleyball net", offer_type: "equipment", description: "comes without polls", sport_type: "volleyball", address: "Preysingstr 34, München", offer_img: "https://www.gophersport.com/cmsstatic/img/615/G-86263-SpikeProVolleyBallSystem-SET-001-clean.jpg?medium", price: 20, user: user1)
Offer.create(name: "Kanu - 2 people", offer_type: "equipment", description: "kanu with paddles", sport_type: "kanu", address: "Elisabethstr 4, München", offer_img: "https://www.lueneburger-heide.de/files/17/Kanu-lueneburger-heide-8.jpg", price: 30, user: user1)

Offer.create(name: "Hiking shoes", offer_type:"equipment", description: "Hiking shoes from company colombia bought 1 year ago", sport_type: "hiking", address: "Varnhagenstrasse 24, München", offer_img: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.qishKHwBYsPxz8VzHbJ0SwHaEK%26pid%3DApi&f=1", price: 20, user: user1)
Offer.create(name: "A ball to shoot", offer_type: "equipment", description: "a ball from euro2008", sport_type: "football", address: "Perlacher Strasse 20, München", offer_img: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.ebayimg.com%2Fimages%2Fg%2FWDEAAOSwIKVeM-Tn%2Fs-l300.jpg&f=1&nofb=1", price: 15, user: user2)
Offer.create(name: "Kanu boot", offer_type: "equipment", description: "Kanu kajak from v. Wildholz", sport_type: "kanu", address: "Jahnstrasse 10, Ottobrunn", offer_img: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2F736x%2F72%2F74%2F53%2F7274535bad06c571e5f652ea19fda109--wood-wood-wood-art.jpg&f=1&nofb=1", price: 70, user: user2)


Offer.create(name: "Etruscan Skis", offer_type: "equipment", description: "My grandfathers skis", sport_type: "ski", address:"Priener Str. 6, 83253 Rimsting", offer_img: "https://secure.img1-fg.wfcdn.com/im/85681860/resize-h800%5Ecompr-r85/8237/82373804/Dekorative+Skier.jpg", price: 80, user: user2)
Offer.create(name: "Heroic Football", offer_type: "equipment", description:"Original Worldcup 1988 soccer" , sport_type: "football" , address: "Waxensteinstraße 3, Penzberg" , offer_img: "https://i.ebayimg.com/00/s/Nzc4WDE2MDA=/z/IfIAAOSwgqdgD-Yn/$_59.JPG", price: 35, user: user2)
Offer.create(name: "Dreamy Kanu", offer_type: "equipment", description: "A kanu with dreamy graffiti art" , sport_type: "kanu" , address: "Senserstraße 3, München" , offer_img: "https://main.static.jsmd-group.com/assets/_default_upload_bucket/Kanu-Tour-1295-1.jpg", price: 99 , user: user1)

puts "Successfully seeeeeeeeeeeedeeeeeeeeeeeed xD"

Offer.create(name: "Hiking shoes", offer_type:"equipment", description: "Hiking shoes from company colombia bought 1 year ago", sport_type: "hiking", address: "Varnhagenstrasse 24, München", offer_img: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.qishKHwBYsPxz8VzHbJ0SwHaEK%26pid%3DApi&f=1", price: 20, user: user1)
Offer.create(name: "A ball to shoot", offer_type: "equipment", description: "a ball from euro2008", sport_type: "football", address: "Perlacher Strasse 20, München", offer_img: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.ebayimg.com%2Fimages%2Fg%2FWDEAAOSwIKVeM-Tn%2Fs-l300.jpg&f=1&nofb=1", price: 15, user: user2)
Offer.create(name: "Kanu boot", offer_type: "equipment", description: "Kanu kajak from v. Wildholz", sport_type: "kanu", address: "Jahnstrasse 10, Ottobrunn", offer_img: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2F736x%2F72%2F74%2F53%2F7274535bad06c571e5f652ea19fda109--wood-wood-wood-art.jpg&f=1&nofb=1", price: 70, user: user1)
