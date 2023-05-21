# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "01 30 20 30 55", category: "belgian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "01 24 44 10 20", category: "italian"}
sushi_lin = {name: "Sushi Lin", address: "4 Rue du Palais, 75001 Paris", phone_number: "01 55 33 66 33", category: "japanese"}
home_of_dims = {name: "Home of Dims", address: "101 Boulevard du commerce, 44000 Nantes", phone_number: "01 10 23 10 55", category: "chinese"}
brasserie_JY = {name: "Brasserie chez JY", address: "Rue allez l'OM, 13002 Marseille", phone_number: "01 25 90 70 90", category: "french"}

[dishoom, pizza_east, sushi_lin, home_of_dims, brasserie_JY].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
