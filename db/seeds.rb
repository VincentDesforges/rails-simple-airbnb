# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'

4.times do
  flats_attributes = {
    name:             Faker::Address.community,
    address:          Faker::Address.street_address,
    description:      Faker::Lorem.paragraph(2),
    price_per_night:  rand(25..300) ,
    number_of_guests: rand(1..6)
  }
  flat = Flat.new(flats_attributes)
  flat.save
end

puts 'Finished!'
