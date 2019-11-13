require "faker"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
res_array = []

6.times do
  @restaurant = Restaurant.create!({
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    description: Faker::Restaurant.description,
  })
  res_array << @restaurant
end

res_array.each do |r|
  6.times do
    Review.create!({
      restaurant_id: r.id,
      content: Faker::Restaurant.review,
      rating: [0, 1, 2, 3, 4, 5].sample
    })
  end
end





# Restaurant.create!(restaurants_attributes)
puts 'Finished!'
