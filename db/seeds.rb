# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'

Review.destroy_all
Car.destroy_all
Owner.destroy_all

puts 'Creating owners...'

luigi = Owner.create!(
  nickname: 'Luigi'
)

puts 'Created Luigi'

peach = Owner.create!(
  nickname: 'Peach'
)

puts 'Created Peach'

donkey_kong = Owner.create!(
  nickname: 'Donkey Kong'
)

puts 'Donkey Kong'

puts "Finsihed! Created #{Owner.count} owners!"

puts 'Creating vehicles...'

Car.create!(
  brand: 'Mario Kart DS',
  model: 'Poltergust 4000',
  year: 2003,
  fuel: 'Coins',
  owner: luigi,
  image_url: 'https://imgcdn.stablediffusionweb.com/2024/4/18/09799371-7b57-41c0-8683-8cdc58a7274d.jpg'
)

puts 'Created Tiny Titan'

Car.create!(
  brand: 'Super Mario Kart',
  model: 'Bike',
  year: 1992,
  fuel: 'Mushrooms',
  owner: peach,
  image_url: 'https://creator.nightcafe.studio/jobs/B0OR5cbeY3ihnNjeV8M6/B0OR5cbeY3ihnNjeV8M6--1--eer5n.jpg'
)

puts 'Created Mach 8'

Car.create!(
  brand: 'Mario Kart 8 Deluxe',
  model: 'Kart',
  year: 1996,
  fuel: 'Power Slides',
  owner: donkey_kong,
  image_url: 'https://imgcdn.stablediffusionweb.com/2024/11/6/6d0a13d3-c94a-486c-a51f-710725dab78d.jpg'
)

puts 'Created Barrel Kart'

puts "Finished! Created #{Car.count} vehicles!"
