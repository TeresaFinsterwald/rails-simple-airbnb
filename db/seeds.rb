# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying flats"
Flat.destroy_all
puts "creating flats"

4.times do
  flat = Flat.new(
    name: Faker::Tea.variety,
    address: Faker::Address.street_name,
    description: Faker::ChuckNorris.fact,
    price_per_night: rand(0..1000),
    number_of_guests: rand(0..8)
  )
  flat.save
end

puts "#{Flat.count} flats were created"
