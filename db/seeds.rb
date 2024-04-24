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
Restaurant.destroy_all

puts 'Creating restaurants...'
bois_la_tasse = { name: 'Bois la tasse', address: '27, rue Alexis de Villeneuve, 97400 Saint-Denis', phone_number: '02 62 34 56 78', category: 'Japanese' }
pizza_toto =  { name: 'Pizza Toto', address: '4, chemin Neuf, 97417 La Montagne', phone_number: '06 92 32 13 31', category: 'Italian' }
karma = { name: 'Karma', address: '8, rue Alexis de Villeneuve, 97400 Saint-Denis', phone_number: '02 63 00 46 34', category: 'French' }
wake_up = { name: 'Wake Up', address: '76, route de la cheminée, 97434 Grand Fond', phone_number: '02 62 90 78 65', category: 'French' }
rizhome = { name: 'Le Rizhome', address: '22, rue Semerle Sainte-Croix, 97419 La Possession', phone_number: '02 62 56 78 90', category: 'Chinese' }

[bois_la_tasse, pizza_toto, karma, wake_up, rizhome].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
