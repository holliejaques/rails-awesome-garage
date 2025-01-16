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

Car.destroy_all
Owner.destroy_all

puts 'Creating owners...'

toad = Owner.create!(
  nickname: 'Toad'
)

puts 'Created Toad'

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
  model: 'Monster Truck',
  year: 2003,
  fuel: 'Coins',
  owner: toad
)

puts 'Created Tiny Titan'

Car.create!(
  brand: 'Super Mario Kart',
  model: 'Bike',
  year: 1992,
  fuel: 'Mushrooms',
  owner: peach
)

puts 'Created Mach 8'

Car.create!(
  brand: 'Mario Kart 8 Deluxe',
  model: 'Kart',
  year: 1996,
  fuel: 'Power Slides',
  owner: donkey_kong
)

puts 'Created Barrel Kart'

puts "Finished! Created #{Car.count} vehicles!"
