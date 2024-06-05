# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
cafe_de_paris = {
  name: "Grand Café de Paris",
  address: "19 B quai Colbert, 30240, Le Grau-du-Roi France",
  phone_number: "0466514001",
  category: "french"
}
gros_bao = {
  name: "Gros Bao Marseille",
  address: "3 Cours Saint-louis, 13001 Marseille France",
  phone_number: "0466515001",
  category: "japanese"
}
shanghai_kitchen = {
  name: "Shanghai Kitchen",
  address: "14 Cours Jean Ballard, 13001 Marseille France",
  phone_number: "0466515021",
  category: "chinese"
}
chez_angele = {
  name: "Chez Angele",
  address: "50 Rue Caisserie, 13002 Marseille France",
  phone_number: "0463515021",
  category: "italian"
}
pizza_cosy = {
  name: "Pizza Cosy",
  address: "101 Rue De La République, 13002 Marseille France",
  phone_number: "0663535021",
  category: "italian"
}

[cafe_de_paris, gros_bao, shanghai_kitchen, chez_angele, pizza_cosy].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
