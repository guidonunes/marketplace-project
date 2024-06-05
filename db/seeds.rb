# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

puts "cleaning user..."
User.destroy_all

puts "creating user"

user = User.create!(first_name: "Julian", last_name: "Rodelo", date_of_birth: Date.new(1990, 1, 1) , email: "juli@gmail.com", password: "123456")

puts "user created"

puts "cleaning products..."
Product.destroy_all

puts "creating products"
10.times do
  product = Product.new(item_name: Faker::Music.band, user: user, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: rand(10000..200000))
  product.save!
end
puts "products created"
