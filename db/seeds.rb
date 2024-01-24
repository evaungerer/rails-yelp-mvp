# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

rocoto = {name: "Rocoto", address: "Schoeneberg", phone_number: "121212", category: "japanese"}
cubo = {name: "Cubo", address: "Kreuzberg", phone_number: "343434", category: "chinese"}
maria = {name: "Maria", address: "Mitte", phone_number: "565656", category: "italian"}
pierre = {name: "Pierre", address: "Prenzlberg", phone_number: "787878", category: "french"}
theo = {name: "Theo", address: "Moabit", phone_number: "898989", category: "belgian"}

[rocoto, cubo, maria, pierre, theo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
